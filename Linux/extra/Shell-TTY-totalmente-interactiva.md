### Una mayor comodidad a la hora de entrar a una shell

python3 -c 'import pty; pty.spawn("/bin/bash")'

script /dev/null -c bash

Ctrl-Z

$stty -echo raw; fg

reset

export SHELL=bash

export TERM=xterm-256color

stty rows 47 columns 238
