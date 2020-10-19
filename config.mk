# sxiv version
version = 26

srcdir = .
VPATH = $(srcdir)

PREFIX = $(HOME)/.local
DESKPREFIX = $(PREFIX)/share/applications
MANPREFIX = $(PREFIX)/share/man

# autoreload backend: inotify/nop
AUTORELOAD = inotify

# enable features requiring giflib (-lgif)
HAVE_GIFLIB = 1

# enable features requiring libexif (-lexif)
HAVE_LIBEXIF = 1

# natural sort file names when reading directories.
# This is slower then a simple locale based string comparison
# but generally follows the same order as your file manager.
NATURAL_SORT = 1

cflags = -std=c99 -Wall -pedantic $(CFLAGS)
cppflags = -I. $(CPPFLAGS) -D_XOPEN_SOURCE=700 \
  -DHAVE_GIFLIB=$(HAVE_GIFLIB) -DHAVE_LIBEXIF=$(HAVE_LIBEXIF) \
  -DNATURAL_SORT=$(NATURAL_SORT) \
  -I/usr/include/freetype2 -I/usr/local/include/freetype2
