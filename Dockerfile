# 빌드 단계
FROM maven:3.8.4-amazoncorretto-11 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# 실행 단계
FROM amazoncorretto:11
WORKDIR /app

# 비루트 사용자 생성
RUN adduser -u 1001 -h /home/appuser -D appuser
USER appuser

# 빌드 단계에서 JAR 파일 복사
COPY --from=build /app/target/smartCart-0.0.1-SNAPSHOT.jar app.jar

# 환경 변수 설정
ENV JAVA_OPTS="-Xms512m -Xmx512m"
ENV SPRING_PROFILES_ACTIVE="prod"

# 포트 노출
EXPOSE 8080

# 헬스 체크
HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost:8080/actuator/health || exit 1

# 애플리케이션 실행
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"] 