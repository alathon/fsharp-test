FROM microsoft/dotnet:2.0-sdk AS BUILD
WORKDIR /build
COPY src src
RUN dotnet restore src/WebHello/WebHello.fsproj
RUN dotnet publish src/WebHello/WebHello.fsproj -o out -c Release --no-restore

FROM microsoft/dotnet:2.0-runtime
WORKDIR /app
COPY --from=BUILD /build/src/WebHello/out .
EXPOSE 8888
ENTRYPOINT dotnet /app/WebHello.dll
