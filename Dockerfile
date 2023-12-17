#FROM : 이미지를 생성할 때 사용할 기반 이미지입니다. 아래와 같은 이미지 레이어를 생성합니다.
FROM openjdk:latest

#ARG : 변수선언
#ARG port
#EXPOSE 8080

# 실행할 jar파일을 playground-traefik.jar이라는 이름으로 복사합니다.
COPY ./build/libs/playground-0.0.1-SNAPSHOT.jar ./playground-0.0.1-SNAPSHOT.jar
#RUN chmod +x /usr/local/playground-0.0.1-SNAPSHOT-plain.jar
#ENV docker-app 'Hello, Docker App !'
#WORKDIR /usr/local

# 컨테이너가 실행될 때 실행할 스크립트 혹은 명령을 정의합니다.
ENTRYPOINT ["java", "-jar", "playground-0.0.1-SNAPSHOT.jar"]
