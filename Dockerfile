FROM hapiproject/hapi:latest
COPY application.yml /app/config/application.yml
ENV FHIR_VERSION=R4
ENV SPRING_CONFIG_ADDITIONAL_LOCATION=file:/app/config/
