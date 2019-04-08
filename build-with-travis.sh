git clone https://gitlab.com/ElXreno/android-5.1-src /build --depth=1
cd /build
mkdir -p device/meizu/m3mini && cp -r /sources/* device/meizu/m3mini/
source build/envsetup.sh && lunch omni_m3mini-eng && make -j5 recoveryimage
cp /build/out/target/product/m3mini/recovery.img /sources/recovery.img
