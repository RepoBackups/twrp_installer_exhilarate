#!/bin/bash

echo "************************************************"
echo "*******Recovery Installer Maker Script**********"
echo "********By Javelinanddart (Paul Keith)**********"
echo "**For the Samsung Galaxy Exhilarate (SGH-I577)**"
echo "************************************************"

echo "************************************************"
echo "Making a CWM/TWRP Flashable Zip"
zip -r recovery.zip META-INF/ recovery.img
echo "Done"
echo "************************************************"

echo "************************************************"
echo "Making an Odin Flashable Tar"
tar -H ustar -c recovery.img > recovery.tar
echo "Done"
echo "************************************************"
echo "ENJOY and HAPPY FLASHING"
echo "Remember I am not responsible for bricks!"
