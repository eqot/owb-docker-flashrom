FROM dockerfile/python

RUN apt-get update && apt-get install -y python-gtk2 libusb-1.0-0-dev android-tools-adb --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/linuxerwang/rkflashkit/raw/master/binaries/rkflashkit_0.1.2_all.deb && \
  dpkg -i rkflashkit_0.1.2_all.deb

ADD adb_usb.ini /root/.android/
