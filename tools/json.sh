#!/bin/bash
echo "{ \"response\": [ { \"datetime\": $(grep ro\.build\.date\.utc $OUT/system/build.prop | cut -d= -f2), \"filename\": \"$(basename $(ls $OUT/CAF*.zip))\", \"id\": \"$((md5sum $OUT/CAF*.zip) | cut -d ' ' -f1)\", \"size\": $(stat -c%s $OUT/CAF*.zip), \"version\": \"9.0-ALPHA\"  }]}" | tee $OUT/update
