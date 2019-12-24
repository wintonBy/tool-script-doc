#!/bin/sh

 

TARGET=$1

 

if [ -z $TARGET ]; then
    echo "Print certificate the apk signed by"
    echo "Usage: $0 [APK|FOLDER]"
    exit 1
fi

 

if [ -d $TARGET ]; then
    #echo "Folder ${TARGET}"
    LINES=$(find ${TARGET} -name "*.apk")
    for L in $LINES; do
        #echo "APK: <$L>"
        keytool -printcert -jarfile ${L}
    done
else
    #echo "File ${TARGET}"
    keytool -printcert -jarfile ${TARGET}
fi
