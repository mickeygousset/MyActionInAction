# Container image that runs your code
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build

# Copies entrypoint.sh from your repo to the path ‘/’ of the container
COPY entrypoint.sh /entrypoint.sh

# Make the script executable
RUN chmod +x /entrypoint.sh
# Executes ‘/entrypoint.sh’ when the docker container starts up
ENTRYPOINT [“/entrypoint.sh”]
