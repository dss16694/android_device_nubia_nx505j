echo " "
patchdir="$PWD"
cd ../../../..

cd frameworks/base/core
echo "Reversing Framerworks/core patch..."
git apply -R $patchdir/3fingers_2.patch
echo " "

cd ..
cd policy
echo "Reversing Framerworks/policy patch..."
git apply -R $patchdir/3fingers_3.patch
echo " "

cd ..
cd media
echo "Reversing Framerworks/media patch..."
git apply -R $patchdir/volumestep.patch
echo " "

cd ../../..
cd packages/apps/Settings
echo "Reversing Settings patch..."
git apply -R $patchdir/3fingers_1.patch
echo " "

echo "Deleting Files if  exist..."
cd ../../..

cd frameworks/base/policy
if [ -e src/com/android/internal/policy/impl/OPGesturesListener.java ]; then
	git apply -R $patchdir/3fingers_4.patch
	echo "OPGesturesListener.java deleted"
fi

echo " "
echo "changing location provider back to google..."
cd ../../..



echo " "
echo "done !"
cd $patchdir

