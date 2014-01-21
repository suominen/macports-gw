# Work around umask when running portindex

.DUMMY: all
all:
	umask 022 && portindex

