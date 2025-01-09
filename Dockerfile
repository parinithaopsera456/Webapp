FROM mcr.microsoft.com/dotnet/aspnet:6.0
COPY . /app
WORKDIR /app
RUN ["dnu", "restore"]

EXPOSE 5004
ENTRYPOINT ["dnx", ".", "kestrel"]
