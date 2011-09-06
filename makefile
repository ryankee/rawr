install:
	# create a symlink of growly in users 
	# bin folder
	ln -s $(CURDIR)/bin/rawr /usr/local/bin/rawr

uninstall:
	# remove symlink
	rm /usr/local/bin/rawr
