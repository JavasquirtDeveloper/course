echo "Resetting your project to REPu Container version ..."

cp elite/backup_files/GoogleService-Info.plist ios/GoogleService-Info.plist
cp elite/backup_files/GoogleService-Info.plist ios/config/production/GoogleService-Info.plist
cp elite/backup_files/repu-certificate.cer ios/repu-certificate.cer
cp elite/backup_files/repu-provision.mobileprovision ios/repu-provision.mobileprovision
cp elite/backup_files/google-services.json android/app/src/production/google-services.json
cp elite/backup_files/logo_splash.png assets/images/png/logo_splash.png
cp elite/backup_files/launcher_icon_foreground.png assets/launcher/launcher_icon_foreground.png
cp elite/backup_files/launcher_icon.png assets/launcher/launcher_icon.png
rm .env
echo "BUNDLE_ID_ANDROID=air.com.repu.repu\nBUNDLE_ID_IOS=com.repu.repu\nAPP_NAME=REPu\nBUNDLE_ID_SLUG=repu\nSCHOOL_ID=0" >> .env

rm ios/.envfile
rm ios/Flutter/tmp.xcconfig

sh scripts/update_splashes.sh
sh scripts/update_launcher_icons.sh
sh scripts/update_firebase_options.sh