#!/system/bin/sh

MOPACKAGENAME="com.github.plethorahil.settingsaccenticons"
MOTARGETPACKAGE="com.android.settings"

sleep 30
if [ ! `cmd overlay list $MOTARGETPACKAGE | grep "[x].*$MOPACKAGENAME"` ]; then
  cmd overlay enable $MOPACKAGENAME
fi
