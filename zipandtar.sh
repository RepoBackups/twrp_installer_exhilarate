#!/bin/bash

echo "Zipping it up"
zip -r recovery.zip META-INF/ recovery.img
echo "Done"

echo "Tarring it up"
tar -H ustar -c recovery.img > recovery.tar
md5sum -t recovery.tar >> recovery.tar
mv recovery.tar recovery.tar.md5
echo "Done"
