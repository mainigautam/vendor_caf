#!/bin/bash
echo "{ \"response\": [ { \"datetime\": $(grep ro\.build\.date\.utc $OUT/system/build.prop | cut -d= -f2), \"filename\": \"$(basename $(ls $OUT/CAF*.zip))\", \"id\": \"$((sha256sum $OUT/CAF*.zip) | cut -d ' ' -f1)\", \"romtype\": \"ALPHA\", \"size\": $(stat -c%s $OUT/CAF*.zip), \"version\": \"9.0-ALPHA\"  }]}" | tee $OUT/update

