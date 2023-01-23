

CODENAME=$(getprop ro.build.version.sdk)
if [[ "$CODENAME" == "33" ]]; then
  mkdir -p "$MODPATH"/system/priv-app/ExternalStorageProvider
  cp -rf "$MODPATH"/T/* "$MODPATH"/system/priv-app/ExternalStorageProvider
elif [[ "$CODENAME" == "32" ]]; then
  mkdir -p "$MODPATH"/system/priv-app/ExternalStorageProvider
  cp -rf "$MODPATH"/S2/* "$MODPATH"/system/priv-app/ExternalStorageProvider
elif [[ "$CODENAME" == "31" ]]; then
  mkdir -p "$MODPATH"/system/priv-app/ExternalStorageProvider
  cp -rf "$MODPATH"/S2/* "$MODPATH"/system/priv-app/ExternalStorageProvider
elif [[ "$CODENAME" == "30" ]]; then
  mkdir -p "$MODPATH"/system/priv-app/ExternalStorageProvider
  cp -rf "$MODPATH"/R/* "$MODPATH"/system/priv-app/ExternalStorageProvider
fi
 
rm -rf "$MODPATH"/R
rm -rf "$MODPATH"/S2
rm -rf "$MODPATH"/S2
rm -rf "$MODPATH"/T

REPLACE="
/system/priv-app/ExternalStorageProvider
"
