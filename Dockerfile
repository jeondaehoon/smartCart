# Step 1: OpenJDK 이미지를 기반으로 사용
FROM openjdk:11-jre-slim

# Step 2: 작업 디렉토리 생성
WORKDIR /app

# Step 3: 빌드된 JAR 파일을 이미지에 복사
COPY target/smartCart-0.0.1-SNAPSHOT.jar /app/smartcart.jar

# Step 4: 애플리케이션 실행
ENTRYPOINT ["java", "-jar", "smartcart.jar"]

# Step 5: 애플리케이션이 사용하는 포트2
EXPOSE 8080
