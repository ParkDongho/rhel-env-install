sudo yum install libXScrnSaver
mkdir tmp && cd tmp
wget https://github.com/jgraph/drawio-desktop/releases/download/v20.8.10/drawio-x86_64-20.8.10.rpm
sudo rpm -i drawio-x86_64-20.8.10.rpm
cd ..
rm -rf tmp
