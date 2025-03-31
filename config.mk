# sbase version
VERSION = 0.1

# paths
PREFIX = /usr/
MANPREFIX = $(PREFIX)/share/man

# tools
CC = musl-gcc
#AR =
RANLIB = ranlib

# -lrt might be needed on some systems
CFLAGS =  -Os -fPIE -pipe -ffunction-sections -fdata-sections
LDFLAGS = -s -static -static-pie



