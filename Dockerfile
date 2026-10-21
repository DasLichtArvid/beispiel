# name the base image
FROM eclipse-temurin:26-jdk-jammy
# arbeitsordner von docker
WORKDIR /myapp
#huhu.java von hier in den arbeitsordner von docker kopieren
COPY huhu.java .
# huhu.java mittels java-compiler (javac) zu byte-code (huhu.class) im image erstellen
RUN javac huhu.java
# startbefehl für dockercontainer mit java runtime environment und programm huhu
CMD ["java", "huhu"]