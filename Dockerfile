# Step 1: Tomcat 10.1.40 이미지 사용
FROM tomcat:10.1.40

# Step 2: 기존 Tomcat 웹 애플리케이션 제거
RUN rm -rf /usr/local/tomcat/webapps/*

# Step 3: WAR 파일을 Tomcat의 webapps 폴더에 복사
COPY target/smartCart-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Step 4: Tomcat의 기본 포트 8080을 8182로 변경
RUN sed -i 's/port="8080"/port="8182"/g' /usr/local/tomcat/conf/server.xml

# Step 5: 포트 8182 오픈
EXPOSE 8182

# Step 6: 사용자 정의 실행 명령
CMD ["sh", "-c", "echo 'Running WAR file' && catalina.sh run"]
