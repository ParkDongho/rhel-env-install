# yum install
sudo yum install net-tools vim make openssh-server zsh firewalld gcc
sudo yum groupinstall "Development Tools" 
sudo dnf install wget yum-utils make gcc openssl-devel bzip2-devel libffi-devel zlib-devel

# python 3.10 ################################
#
wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tgz
tar xzf Python-3.10.8.tgz
cd Python-3.10.8
sudo ./configure --with-system-ffi --with-computed-gotos --enable-loadable-sqlite-extensions
sudo make -j ${nproc}
sudo make altinstall 
sudo rm Python-3.10.8.tgz
# python 3.10 virtual environment
cd ~/python-app/
sudo /usr/local/bin/python3.10 -m venv appenv
source appenv/bin/activate 
#
##############################################

