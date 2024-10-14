# Usar a imagem base do OpenJDK 17
FROM eclipse-temurin:17-jre-alpine

# Definir o diretório de trabalho no container
WORKDIR /app

# Copiar o arquivo JAR para o container
COPY WellDone-0.0.1-SNAPSHOT.jar /app/app.jar

# Comando para iniciar a aplicação
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
