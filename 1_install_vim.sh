# install vim

sudo apt install gcc 
sudo apt install g++
sudo apt install make
sudo apt install libncurses5-dev

git clone git@github.com:vim/vim.git
cd vim/
./configure --with-features=huge --enable-pythoninterp --enable-rubyinterp --enable-luainterp --enable-perlinterp --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ --enable-gui=gtk2 --enable-cscope --prefix=/usr  
make 
sudo make install 
