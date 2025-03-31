sudo  apt update -y 
sudo apt autoremove man-db -y
sudo apt install musl-tools -y 
git clone --depth=1 https://git.suckless.org/sbase/
cp config.mk  sbase/
cp Makefile  sbase/
cd sbase
make libutil.a
make libutf.a
make getconf.h
make DESTDIR="$PWD/pkg" sbase-box-install
tar -czvf sbase-static.tar.gz -C "$PWD/pkg" .

# make all install uninstall dist sbase-box-install sbase-box-uninstall clean
# links to /lib/x86_64-linux-gnu/libc.so if build from debian

