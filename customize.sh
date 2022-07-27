if [ -n "$MMM_EXT_SUPPORT" ]; then
  ui_print "#!useExt"
  mmm_exec() {
    ui_print "$(echo "#!$@")"
  }
else
  mmm_exec() { true; }
  abort "! This module need to be executed in Fox's Magisk Module Manager"
  exit 1
fi

ui_replace() {
  mmm_exec setLastLine "$1"
}

CODENAME=$(getprop ro.build.version.sdk)
if [[ "$CODENAME" == "33" ]]; then
  mkdir -p "$MODPATH"/system/priv-app/ExternalStorageProvider
  cp -rf "$MODPATH"/T/* "$MODPATH"/system/priv-app/ExternalStorageProvider
elif [[ "$CODENAME" == "32" ]]; then
  mkdir -p "$MODPATH"/system/priv-app/ExternalStorageProvider
  cp -rf "$MODPATH"/S2/* "$MODPATH"/system/priv-app/ExternalStorageProvider
elif [[ "$CODENAME" == "31" ]]; then
  mkdir -p "$MODPATH"/system/priv-app/ExternalStorageProvider
  cp -rf "$MODPATH"/S/* "$MODPATH"/system/priv-app/ExternalStorageProvider
elif [[ "$CODENAME" == "30" ]]; then
  mkdir -p "$MODPATH"/system/priv-app/ExternalStorageProvider
  cp -rf "$MODPATH"/R/* "$MODPATH"/system/priv-app/ExternalStorageProvider
fi
 
rm -rf "$MODPATH"/R
rm -rf "$MODPATH"/S
rm -rf "$MODPATH"/S2
rm -rf "$MODPATH"/T

REPLACE="
/system/priv-app/ExternalStorageProvider
"

ui_print ""
ui_print "- Telegram Support group (top right corner)"
ui_print ""

mmm_exec setSupportLink "https://t.me/dnmgsk"
