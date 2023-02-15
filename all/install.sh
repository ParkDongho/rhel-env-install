# yum install
sudo yum install net-tools vim make openssh-server zsh firewalld gcc
sudo yum groupinstall "Development Tools" 

# python 3.10 ################################
sudo dnf install wget yum-utils make gcc openssl-devel bzip2-devel libffi-devel zlib-devel
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
##############################################


# nvim
sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum install neovim python3-neovim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
