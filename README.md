https://git.suckless.org/sbase/file/README.html


# sbase - suckless Unix tools

sbase is a collection of Unix tools that are inherently portable across
UNIX and UNIX-like systems.  

The complement of sbase is [ubase](http://git.suckless.org/ubase/), which is Linux-specific and provides
all the non-portable tools. Together they are intended to form a base
system similar to BusyBox but much smaller and suckless.

## Building

To build sbase, simply run:

```sh
make
```

You may need to modify `config.mk` depending on your system.

You can also build `sbase-box`, which generates a single binary containing
all the required tools. You can then symlink the individual tools to `sbase-box` or run:

```sh
make sbase-box-install
```

To run the tools for `sbase-box` directly, use:

```sh
sbase-box cmd [args]
```

Ideally, you will want to statically link sbase. If you are on Linux, we
recommend using [musl-libc](http://www.musl-libc.org/).

## Portability

sbase has been compiled on various operating systems, including:

- Linux
- *BSD
- OSX
- Haiku
- Solaris
- SCO OpenServer

It has also been built using different architectures and compilers, such as:

- gcc
- clang
- tcc
- nwcc
- pcc

## Status

The following tools are implemented:

`#`  -> UTF-8 support  
`=`  -> Implicit UTF-8 support  
`*`  -> Finished  
`|`  -> Audited  
`o`  -> POSIX 2013 compliant  
`x`  -> Non-POSIX  
`0`  -> NUL handling  
`() ` -> Petty flag  

| Utility | Status |
|---------|--------|
| `basename` | `0=*|o` |
| `cal` | `0=*|o` |
| `cat` | `0=*|o` |
| `chgrp` | `0=*|o` |
| `chmod` | `0=*|o` |
| `chown` | `0=*|o` |
| `chroot` | `0=*|x` |
| `cksum` | `0=*|o` |
| `cmp` | `0=*|o` |
| `cols` | `0#*|x` |
| `comm` | `0=*|o` |
| `cp` | `0=*|o (-i)` |
| `cron` | `0=*|x` |
| `cut` | `0#*|o` |
| `date` | `0=*|o` |
| `dd` | `0=*|o` |
| `dirname` | `0=*|o` |
| `du` | `0=*|o` |
| `echo` | `0=*|o` |
| `ed` | `o` |
| `env` | `0=*|o` |
| `expand` | `0#*|o` |
| `expr` | `0#*|o` |
| `false` | `0=*|o` |
| `find` | `0=` |
| `flock` | `0=* x` |
| `fold` | `0#*|o` |
| `getconf` | `0=*|o (-v)` |
| `grep` | `=*|o` |
| `head` | `0=*|o` |
| `hostname` | `0=*|x` |
| `install` | `0=*|x` |
| `join` | `0=* o` |
| `kill` | `0=*|o` |
| `link` | `0=*|o` |
| `ln` | `0=*|o` |
| `logger` | `0=*|o` |
| `logname` | `0=*|o` |
| `ls` | `0#* o (-C, -k, -m, -p, -s, -x)` |
| `md5sum` | `0=*|x` |
| `mkdir` | `0=*|o` |
| `mkfifo` | `0=*|o` |
| `mknod` | `0=*|x` |
| `mktemp` | `0=*|x` |
| `mv` | `0=*|o (-i)` |
| `nice` | `0=*|o` |
| `nl` | `0#*|o` |
| `nohup` | `0=*|o` |
| `od` | `0=*|o` |
| `paste` | `#*|o` |
| `pathchk` | `0#* o` |
| `printenv` | `0=*|x` |
| `printf` | `0#*|o` |
| `pwd` | `0=*|o` |
| `readlink` | `0=*|x` |
| `renice` | `0=*|o` |
| `rev` | `0#* x` |
| `rm` | `0=*|o (-i)` |
| `rmdir` | `0=*|o` |
| `sed` | `#` |
| `seq` | `0=*|x` |
| `setsid` | `0=*|x` |
| `sha1sum` | `0=*|x` |
| `sha256sum` | `0=*|x` |
| `sleep` | `0=*|o` |
| `sort` | `0#*|o` |
| `split` | `0=*|o` |
| `sponge` | `0=*|x` |
| `strings` | `0#*|o` |
| `sync` | `0=*|x` |
| `tail` | `0=*|o` |
| `tar` | `0=*|x` |
| `tee` | `0=*|o` |
| `test` | `0=*|o` |
| `xargs` | `0=*|o (-p)` |
| `yes` | `0=*|x` |

---

[1] http://git.suckless.org/ubase/  
[2] http://www.musl-libc.org/  

