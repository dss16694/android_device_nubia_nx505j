echo " "
patchdir="$PWD"
cd ../../../..

cd frameworks/base/core
echo "Applying Framerworks/core patch..."
git apply $patchdir/3fingers_2.patch
echo " "

cd ..
cd policy
echo "Applying Framerworks/policy patch..."
git apply $patchdir/3fingers_3.patch
echo " "

cd ..
cd media
echo "Applying Framerworks/media patch..."
git apply $patchdir/volumestep.patch
echo " "

cd ../../..
cd packages/apps/Settings
echo "Applying Settings patch..."
git apply $patchdir/3fingers_1.patch
echo " "

echo "Adding Files if not exist..."
cd ../../..

cd frameworks/base/policy
if [ ! -e src/com/android/internal/policy/impl/OPGesturesListener.java ]; then
	git apply $patchdir/3fingers_4.patch
	echo "OPGesturesListener.java added"
fi

echo " "
echo "changing location provider to baidu..."
cd ../../..



echo " "
echo "done !"
cd $patchdir

