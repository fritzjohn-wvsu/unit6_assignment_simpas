#!/bin/bash

# Clone the stable version of Flutter
git clone https://github.com/flutter/flutter.git --branch stable --single-branch flutter

# Add flutter to the PATH
export PATH=$PATH:`pwd`/flutter/bin

# Run flutter doctor to ensure everything is set up
flutter doctor

# Get dependencies
flutter pub get

# Build the web version of your app
flutter build web
