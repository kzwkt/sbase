# sbase version
VERSION = 0.0

# paths
PREFIX = /usr/
MANPREFIX = $(PREFIX)/share/man

# tools
CC = musl-gcc
#AR =
RANLIB = ranlib

# -lrt might be needed on some systems
CFLAGS = '-static -Os -fPIE -pipe'
LDFLAGS = '-static -static-pie'



