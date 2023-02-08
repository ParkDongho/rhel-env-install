sudo dnf install wget yum-utils make gcc openssl-devel bzip2-devel libffi-devel zlib-devel 

wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tgz 
tar xzf Python-3.10.8.tgz

cd Python-3.10.8 
sudo ./configure --with-system-ffi --with-computed-gotos --enable-loadable-sqlite-extensions

sudo make -j ${nproc} 
sudo make altinstall

sudo rm Python-3.10.8.tgz
