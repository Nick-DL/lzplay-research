#!/system/bin/sh
# Locate which framework component implements shouldPreventStartProvider
NEEDLE="shouldPreventStartProvider"
NEEDLE2="IAware or trustspace"
for f in /system/framework/*.jar /system/framework/*.abc /system/framework/*.an /system/framework/*.vdex; do
  c=$(grep -c "$NEEDLE" "$f" 2>/dev/null)
  if [ "$c" != "0" ] && [ -n "$c" ]; then echo "HIT1 $f : $c"; fi
done
echo "=== needle2 ==="
for f in /system/framework/*.jar /system/framework/*.abc /system/framework/*.an; do
  c=$(grep -c "$NEEDLE2" "$f" 2>/dev/null)
  if [ "$c" != "0" ] && [ -n "$c" ]; then echo "HIT2 $f : $c"; fi
done
