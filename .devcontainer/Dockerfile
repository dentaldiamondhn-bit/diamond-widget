FROM mcr.microsoft.com/devcontainers/java:1-17-bullseye

# Install Android SDK and tools
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    curl \
    git \
    gradle \
    && rm -rf /var/lib/apt/lists/*

# Set Android SDK environment variables
ENV ANDROID_SDK_ROOT=/opt/android-sdk
ENV ANDROID_HOME=/opt/android-sdk
ENV PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

# Download and install Android SDK command line tools
RUN wget -q https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip -O tools.zip && \
    unzip -q tools.zip && \
    mkdir -p $ANDROID_HOME/cmdline-tools/latest && \
    mv cmdline-tools/* $ANDROID_HOME/cmdline-tools/latest/ && \
    rm tools.zip

# Install Android SDK components
RUN yes | $ANDROID_HOME/cmdline-tools/latest/bin/sdkmanager --sdk_root=$ANDROID_HOME "platform-tools" "platforms;android-34" "build-tools;34.0.0"

# Set working directory
WORKDIR /workspaces/diamond-widget

# Copy project files
COPY . .

# Make setup script executable
RUN chmod +x .devcontainer/setup.sh

# Expose ports for debugging
EXPOSE 8080 5555

# Default command
CMD ["/bin/bash"]
