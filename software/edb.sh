# A whole bunch of dependencies.
sudo apt-get install git build-essential cmake qt5-default qtscript5-dev libssl-dev qttools5-dev qttools5-dev-tools qtmultimedia5-dev libqt5svg5-dev libqt5webkit5-dev libsdl2-dev libasound2 libxmu-dev libxi-dev freeglut3-dev libasound2-dev libjack-jackd2-dev libxrandr-dev libqt5xmlpatterns5-dev libqt5xmlpatterns5 -y

# Download and build EDB.
wget https://github.com/eteran/edb-debugger/releases/download/1.0.0/edb-debugger-1.0.0.tgz
tar -xvf edb-debugger-1.0.0.tgz
cd edb-debugger-1.0.0.tgz
mkdir build
cd build
cmake ..
make
