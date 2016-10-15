# Put this at the end of your .bash_logout file to clear all bash history on logout.

# ...

# clear all bash history on logout

cat /dev/null > ~/.bash_history && history -c
