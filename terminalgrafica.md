python3 -c 'import pty; pty.spawn("/bin/bash")'
script /dev/null -c bash

Ctrl-Z


$ stty raw -echo
$ fg

reset
export SHELL=bash
export TERM=xterm-256color
stty rows 47 columns 238
