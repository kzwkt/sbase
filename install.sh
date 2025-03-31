PREFIX = /usr/
CC = musl-gcc
CFLAGS = '-static -Os -fPIE -pipe'
LDFLAGS = '-static -static-pie'

git clone --depth=1 https://git.suckless.org/sbase/

# make all install uninstall dist sbase-box-install sbase-box-uninstall clean
# links to /lib/x86_64-linux-gnu/libc.so if build from debian

