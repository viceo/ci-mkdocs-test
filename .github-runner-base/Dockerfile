FROM --platform=linux/amd64 ubuntu:22.10

# Allow run as root
ENV RUNNER_ALLOW_RUNASROOT 1

# Update packages
RUN apt update -y && apt upgrade -y

# Install curl
RUN apt install curl -y

# Working directory
WORKDIR /github-runner

# Download the latest runner package
RUN curl -o actions-runner-linux-x64-2.299.1.tar.gz \
    -L https://github.com/actions/runner/releases/download/v2.299.1/actions-runner-linux-x64-2.299.1.tar.gz

# Extract the installer
RUN tar xzf ./actions-runner-linux-x64-2.299.1.tar.gz

# Install Dotnet dependencies
RUN ./bin/installdependencies.sh
