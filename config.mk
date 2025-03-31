# sbase version
VERSION = 0.1

# paths
PREFIX = /usr/

# tools
CC = musl-gcc
AR = ar
RANLIB = ranlib

# -lrt might be needed on some systems
CFLAGS =  -Os -fPIE -pipe 
LDFLAGS = -s -static -static-pie



