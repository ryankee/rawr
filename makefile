install:
	# create a symlink of growly in users 
	# bin folder
	ln -s $(CURDIR)/bin /usr/local/bin/lib

uninstall:
	# remove symlink
	rm /usr/local/bin/lib
