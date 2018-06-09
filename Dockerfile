FROM microsoft/dotnet:2.0-sdk
RUN mkdir -p /app/src
COPY src /app/src
WORKDIR /app
