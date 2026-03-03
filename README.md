# Diamond Link Calendar Widget - Android Development

## 🚀 GitHub Codespaces Setup

This project is configured to work with GitHub Codespaces for Android development without requiring local Android Studio installation.

### 📋 Prerequisites
- GitHub account
- Repository pushed to GitHub

### 🛠️ How to Use

1. **Push to GitHub**
   ```bash
   git add .
   git commit -m "Add Android widget project"
   git push origin main
   ```

2. **Create Codespace**
   - Go to your GitHub repository
   - Click "Code" → "Codespaces" → "Create codespace on main"
   - Wait for environment to build (2-3 minutes)

3. **Build the Widget**
   ```bash
   cd android
   ./gradlew build
   ```

4. **Generate APK**
   ```bash
   ./gradlew assembleDebug
   ```

5. **Download APK**
   - Find the APK in: `android/app/build/outputs/apk/debug/app-debug.apk`
   - Download to your device and install

## 📱 Widget Features

### ✅ What This Widget Does
- **Home Screen Display** - Shows calendar directly on Android home screen
- **Real Events** - Fetches from your Diamond Link calendar API
- **Today's Schedule** - Shows current day events and tasks
- **Upcoming Events** - Displays next few days of appointments
- **Auto Refresh** - Updates every 30 minutes
- **Click to Open** - Opens main calendar app when tapped

### 🎯 Widget Layout
- **Header** - Calendar icon, title, refresh button
- **Current Date** - Today's date display
- **Event Count** - Number of events/tasks today
- **Today's Events** - Detailed list of today's appointments
- **Upcoming Events** - Next few days of schedule

## 🔧 Technical Details

### 📁 Project Structure
```
android/
├── app/
│   ├── src/main/
│   │   ├── java/com/dentaldiamondhn/calendarwidget/
│   │   │   ├── CalendarWidgetProvider.java    # Widget lifecycle
│   │   │   ├── CalendarWidgetService.java     # Data fetching
│   │   │   ├── CalendarDataFetcher.java       # API integration
│   │   │   ├── CalendarWidgetData.java        # Data models
│   │   │   └── MainActivity.java              # App activity
│   │   ├── res/
│   │   │   ├── layout/                        # Widget layouts
│   │   │   ├── values/                        # Strings and resources
│   │   │   ├── drawable/                      # Icons and backgrounds
│   │   │   └── xml/                           # Widget configuration
│   │   └── AndroidManifest.xml                # App permissions
│   ├── build.gradle                          # App build config
│   └── settings.gradle                       # Project settings
├── build.gradle                              # Root build config
└── gradlew                                   # Gradle wrapper
```

### 🔌 API Integration
- **Endpoint**: `https://diamond-link-i8fctps1i-diamond-link.vercel.app/api/calendar/events`
- **Authentication**: Uses stored auth tokens from main app
- **Data Format**: JSON with events and patient information
- **Error Handling**: Graceful fallbacks for network issues

### ⚙️ Widget Configuration
- **Size**: 320x240dp (resizable)
- **Update Frequency**: Every 30 minutes
- **Target SDK**: Android 34
- **Min SDK**: Android 24

## 📦 Installation Instructions

### 🏗️ Build and Install
1. **Build APK**: `./gradlew assembleDebug`
2. **Download APK**: From Codespace to your device
3. **Enable Unknown Sources**: In Android settings
4. **Install APK**: Tap the downloaded file
5. **Add Widget**: Long press home screen → Widgets → Diamond Link Calendar

### 🎯 User Setup
1. **Install the app** from APK
2. **Open app once** to authenticate with calendar
3. **Add widget** to home screen
4. **Widget auto-updates** with calendar data

## 🐛 Troubleshooting

### ⚠️ Common Issues
- **Build fails**: Check Android SDK installation in Codespace
- **Widget not updating**: Check internet connection and auth tokens
- **API errors**: Verify calendar API is accessible
- **Installation blocked**: Enable "Unknown Sources" in Android settings

### 🔧 Debug Commands
```bash
# Check build logs
./gradlew build --stacktrace

# Clean and rebuild
./gradlew clean build

# Check Android SDK
echo $ANDROID_HOME
```

## 🚀 Next Steps

### 📈 Future Enhancements
- **Multiple widget sizes** - Small, medium, large options
- **Theme customization** - Light/dark themes
- **Event filtering** - By type or priority
- **Interactive widget** - Click events to open details
- **Offline support** - Cache calendar data locally

### 📱 Distribution
- **Google Play Store** - Publish for easy installation
- **Firebase App Distribution** - Beta testing
- **Direct APK** - Download from website

## 📞 Support

For issues with the Android widget:
1. Check this README for troubleshooting
2. Review build logs in Codespace
3. Test API connectivity
4. Verify Android device compatibility

---

**🎉 Your Android home screen calendar widget is ready for development and testing!**
