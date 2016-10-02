# ...

# clear all bash history on logout

cat /dev/null > ~/.bash_history && history -c
