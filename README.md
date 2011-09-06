Rawr
======
Redirects output of a command to a growl notification

Installation
------------
    $ git clone git://github.com/ryankee/rawr.git
	$ cd rawr
	$ make install
	$ rawr -h

Uninstalling
------------
    $ cd /path/to/rawr/source
    $ make uninstall

Usage
-----
    Options:
      --title, -t <s>:   Set the title
        --version, -v:   Print version and exit
           --help, -h:   Show this message

Example Usage
-------------
	$ rawr echo "it works!"
    $ rawr rake test
    $ rawr -t "My custom title" ls
