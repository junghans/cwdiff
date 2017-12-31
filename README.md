# (w)diff wrapper to support directories and colorize the output

## [Documentation](http://junghans.github.io/cwdiff/)

## Usage with mercurial

* add `cwdiff.rc` to your `~/.hgrc` or `/etc/mercurial/hgrc.d/`

or

* Download cwdiff
* Enable ExtdiffExtension (in `~/.hgrc`):
```
[extensions]
extdiff =
```
* Add wdiff command (in `~/.hgrc`):
```
[extdiff]
# if cwdiff is in your path, otherwise set to wherever you've installed cwdiff
cmd.wdiff = cwdiff
#add --no-color below, if you dislike colors!
opts.wdiff = --diff --ab
```
* Run
```
$ hg wdiff
```

## Packages

Packages are available for:
* [tarball](https://github.com/junghans/cwdiff/releases)
* [MacPorts](http://www.macports.org/ports.php?by=name&substr=cwdiff)
* [Arch Linux](https://aur.archlinux.org/packages/cwdiff)
* [NetBSD](http://cvsweb.netbsd.org/bsdweb.cgi/pkgsrc/textproc/cwdiff/)
* [Gentoo Linux](http://packages.gentoo.org/package/dev-util/cwdiff)

## Issues

Report bugs on the [github issues site](https://github.com/junghans/cwdiff/issues)

