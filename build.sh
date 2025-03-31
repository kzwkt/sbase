sudo apt install musl-tools -y --no-install-recommends
git clone --depth=1 https://git.suckless.org/sbase/
cp config.mk  sbase/
make dist

# make all install uninstall dist sbase-box-install sbase-box-uninstall clean
# links to /lib/x86_64-linux-gnu/libc.so if build from debian

