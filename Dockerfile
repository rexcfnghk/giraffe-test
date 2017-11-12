
FROM microsoft/aspnetcore:2.0-nanoserver-1709
LABEL Name=giraffe-test Version=0.0.1 
ARG source=.
WORKDIR /app
EXPOSE 5000
COPY $source .
ENTRYPOINT dotnet giraffe-test.dll
