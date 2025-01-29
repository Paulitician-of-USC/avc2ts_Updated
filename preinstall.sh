git clone git://github.com/F5OEO/libmpegts
cd libmpegts
./configure
make
cd ../

#For libfdkaac
sudo apt-get -y install autoconf libtool
git clone https://github.com/mstorsjo/fdk-aac
cd fdk-aac
./autogen.sh
./configure
make && sudo make install
sudo ldconfig
cd ../


#libyuv should be used for fast picture transformation : not yet implemented
git clone https://chromium.googlesource.com/libyuv/libyuv
cd libyuv
#should patch linux.mk with -DHAVE_JPEG on CXX and CFLAGS
#seems to be link with libjpeg9-dev
make V=1 -f linux.mk
cd ../

# Required for ffmpegsrc.cpp
sudo apt-get -y install libvncserver-dev libavcodec-dev libavformat-dev libswscale-dev libavdevice-dev

