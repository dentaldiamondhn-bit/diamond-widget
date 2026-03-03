#!/bin/bash

echo "🚀 Setting up Android Development Environment..."

# Set up Android SDK paths
export ANDROID_SDK_ROOT=/opt/android-sdk
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

# Install additional Android SDK components
echo "📦 Installing Android SDK components..."
yes | $ANDROID_HOME/cmdline-tools/latest/bin/sdkmanager --sdk_root=$ANDROID_HOME "platform-tools" "platforms;android-34" "build-tools;34.0.0" "ndk;25.1.8937393"

# Set up Gradle wrapper
echo "🔧 Setting up Gradle..."
cd android
if [ ! -f gradlew ]; then
    gradle wrapper --gradle-version 8.0
fi
chmod +x gradlew

# Build the project
echo "🏗️ Building Android widget..."
./gradlew build

echo "✅ Android development environment ready!"
echo "📱 You can now build and test the calendar widget"
