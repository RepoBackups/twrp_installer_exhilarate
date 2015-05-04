#!/bin/bash

echo "************************************************"
echo "*******Recovery Installer Maker Script**********"
echo "********By Javelinanddart (Paul Keith)**********"
echo "**For the Samsung Galaxy S Blaze 4G (SGH-T769)**"
echo "************************************************"

echo "************************************************"
echo "Making a CWM/TWRP Flashable Zip"
zip -r recovery.zip META-INF/ recovery.img > /dev/null
echo "Done"
echo "************************************************"

echo "************************************************"
echo "Making an Odin Flashable Tar"
tar -H ustar -c recovery.img > recovery.tar > /dev/null
md5sum -t recovery.tar >> recovery.tar > /dev/null
mv recovery.tar recovery.tar.md5 > /dev/null
echo "Done"
echo "************************************************"
echo "ENJOY and HAPPY FLASHING"
echo "Remember I am not responsible for bricks!"
