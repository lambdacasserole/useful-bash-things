# Put this at the end of your .bashrc file to clear all bash history on login.

# ...

# clear history completely on login

cat /dev/null > ~/.bash_history && history -c
