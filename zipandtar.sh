#!/bin/bash

echo "Zipping it up"
zip -r recovery.zip META-INF/ recovery.img > /dev/null
echo "Done"

echo "Tarring it up"
tar -H ustar -c recovery.img > recovery.tar > /dev/null
md5sum -t recovery.tar >> recovery.tar > /dev/null
mv recovery.tar recovery.tar.md5 > /dev/null
echo "Done"
