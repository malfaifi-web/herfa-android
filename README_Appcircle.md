# Herfa (Flutter) - Android Source (AR/EN)

## Build on Appcircle - APK
1) ادفع هذا المجلد إلى مستودع GitHub جديد (اسم مقترح: `herfa-android`).
2) في my.appcircle.io > Build > Add build profile > Android > اختر المستودع.
3) في Workflows أضِف خطوة **Script** قبل البناء:
```
flutter --version
flutter pub get
flutter create . --platforms=android
```
4) أضف خطوة **Flutter Build** بالأمر:
```
flutter build apk --release
```
5) ابدأ البناء. حمل الـ APK من:
`build/app/outputs/flutter-apk/app-release.apk`
