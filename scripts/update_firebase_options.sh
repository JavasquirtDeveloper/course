# https://firebase.flutter.dev/docs/overview/#using-the-flutterfire-cli

rm ios/Runner/GoogleService-Info.plist

flutterfire configure -y \
  --project=repu-container \
  --out=lib/firebase/firebase_options_staging.g.dart \
  --ios-bundle-id=com.repu.repu.staging \
  --android-package-name=air.com.repu.repu.staging \
&& mkdir -p ios/config/staging && mv ios/Runner/GoogleService-Info.plist ios/config/staging/GoogleService-Info.plist \
&& mkdir -p android/app/src/staging && mv android/app/google-services.json android/app/src/staging/google-services.json;

flutterfire configure -y \
  --project=repu-container \
  --out=lib/firebase/firebase_options_uat.g.dart \
  --ios-bundle-id=com.repu.repu.uat \
  --android-package-name=air.com.repu.repu.uat \
&& mkdir -p ios/config/uat && mv ios/Runner/GoogleService-Info.plist ios/config/uat/GoogleService-Info.plist \
&& mkdir -p android/app/src/uat && mv android/app/google-services.json android/app/src/uat/google-services.json;

flutterfire configure -y \
  --project=repu-container \
  --out=lib/firebase/firebase_options.g.dart \
  --ios-bundle-id=com.repu.repu \
  --android-package-name=air.com.repu.repu \
&& mkdir -p ios/config/production && cp ios/Runner/GoogleService-Info.plist ios/config/production/GoogleService-Info.plist \
&& mkdir -p android/app/src/production && mv android/app/google-services.json android/app/src/production/google-services.json;

dart format lib/firebase