# Usa una imagen base de Java con el JDK
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR generado por Maven a la imagen
COPY target/first-api-rest-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto en el que la aplicación escucha (cambia si es necesario)
EXPOSE 8080

# Define el comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
