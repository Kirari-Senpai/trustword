sudo apt-get install gcc cmake openssl libssl-dev libsqlite3-dev git
git clone https://github.com/jedisct1/libsodium --branch stable
cd libsodium
./configure
make && make check
make install
cd ..
git clone https://github.com/P-H-C/phc-winner-argon2.git
cd phc-winner-argon2
make && make install PREFIX=/usr
cd ..
mkdir build && cd build
export CC=`which gcc`
cmake ..
make install
