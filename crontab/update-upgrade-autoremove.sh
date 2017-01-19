# ...

# Update package lists, upgrade everything, remove orphaned packages.
/usr/bin/apt-get update && /usr/bin/apt-get -y dist-upgrade && /usr/bin/apt autoremove -y
