# 기존 JAR 기반 Dockerfile
# Step 1: OpenJDK 17 이미지를 기반으로 사용
# FROM openjdk:17

# Step 2: 작업 디렉토리 생성
# WORKDIR /app

# Step 3: 빌드된 JAR 파일을 이미지에 복사
# COPY target/smartCart-0.0.1-SNAPSHOT.jar /app/smartcart.jar

# Step 4: 애플리케이션 실행
# ENTRYPOINT ["java", "-jar", "smartcart.jar"]

# Step 5: 애플리케이션이 사용하는 포트
# EXPOSE 8080


# Tomcat 9을 사용하여 WAR 기반으로 애플리케이션 실행clea
# Step 1: Tomcat 9 이미지 사용
FROM tomcat:9.0

# Step 2: 기존 Tomcat 웹 애플리케이션 제거 (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Step 3: WAR 파일을 Tomcat의 webapps 폴더에 복사
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Step 4: Tomcat의 기본 포트 8080을 8182로 변경
RUN sed -i 's/port="8080"/port="8182"/g' /usr/local/tomcat/conf/server.xml

# Step 5: 포트 8182 오픈
EXPOSE 8182

# Step 6: Tomcat 실행 (컨테이너 시작 시 자동으로 Tomcat 실행)
CMD ["catalina.sh", "run"]
