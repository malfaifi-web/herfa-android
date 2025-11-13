@echo off
setlocal
where flutter >nul 2>&1 || (echo Please add Flutter to PATH & pause & exit /b 1)
flutter pub get || goto :fail
flutter create . --platforms=android || goto :fail
flutter build apk --debug || goto :fail
echo APK at build\app\outputs\flutter-apk\app-debug.apk
pause
exit /b 0
:fail
echo Build failed.
pause
exit /b 1
