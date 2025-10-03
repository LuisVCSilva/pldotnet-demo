# Stage 1: Build
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

# Set working directory inside the container
WORKDIR /app

# Copy project file and restore dependencies first
COPY PldotnetDemo.csproj ./
RUN dotnet restore

# Copy the rest of the source code
COPY . ./

# Build the project (release configuration)
RUN dotnet publish -c Release -o /app/publish

# Stage 2: Runtime
FROM mcr.microsoft.com/dotnet/runtime:6.0

# Set working directory
WORKDIR /app

# Copy the published app from the build stage
COPY --from=build /app/publish ./

# Set entrypoint
ENTRYPOINT ["dotnet", "PldotnetDemo.dll"]
