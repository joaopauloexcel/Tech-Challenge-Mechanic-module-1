FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

COPY *.sln .
COPY src/**/*.csproj ./src/

RUN dotnet restore

COPY src/. ./src/

WORKDIR /app/src
RUN dotnet publish -c Release -o /app/out

FROM mcr.microsoft.com/dotnet/aspnet:8.0

RUN useradd -m appuser

WORKDIR /app

COPY --from=build /app/out .

RUN chown -R appuser:appuser /app

USER appuser

EXPOSE 8080

ENTRYPOINT ["dotnet", "Mechanic.dll"]