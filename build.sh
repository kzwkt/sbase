sudo apt install musl-tools gcc-x86-64-linux-gnu -y
git clone --depth=1 https://git.suckless.org/sbase/
cp config.mk  sbase/
cd sbase
make
make dist

# make all install uninstall dist sbase-box-install sbase-box-uninstall clean
# links to /lib/x86_64-linux-gnu/libc.so if build from debian

