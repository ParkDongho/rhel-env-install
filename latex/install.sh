# install live
cd /tmp # working directory of your choice
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz # or curl instead of wget
zcat install-tl-unx.tar.gz | tar xf -
#cd /tmp/install-tl-20230203/ #에러 발생시 폴더명 변경
cd /tmp/install-tl-20230209/
sudo perl ./install-tl --no-interaction # as root or with writable destination

# Trouble Shooting
sudo yum install perl-Time-HiRes # Update perl-Time-HiRes
sudo yum install -y libnsl       # Install libnsl
