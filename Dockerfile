#Dockerfile for GitHub actions Pipeline
#requires running MongoDB to start container
#see docker image readme for startup options, variables, https hosting etc.

FROM mcr.microsoft.com/dotnet/runtime-deps:6.0-bullseye-slim

ENV ASPNETCORE_URLS https://localhost:888
ENV ASPNETCORE_URLS http://localhost:887

ADD ["src/MDD4All.SpecIF.Microservice/src/MDD4All.SpecIF.Microservice/bin/Release/net6.0/linux-x64/publish", "/app"]
COPY ["specif.pfx", "/https/specif.pfx"]

WORKDIR /app
ENTRYPOINT ["./MDD4All.SpecIF.Microservice"]




