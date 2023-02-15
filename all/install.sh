# yum install
sudo yum install net-tools vim make openssh-server zsh firewalld gcc wget yum-utils openssl-devel bzip2-devel libffi-devel zlib-devel ncurses-compat-libs sqlite-devel
sudo yum groupinstall "Development Tools" 

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# python 3.10
wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tgz
tar xzf Python-3.10.8.tgz
cd Python-3.10.8
sudo ./configure --with-system-ffi --with-computed-gotos --enable-loadable-sqlite-extensions
sudo make -j ${nproc}
sudo make altinstall 
sudo rm Python-3.10.8.tgz
sudo cp /usr/local/bin/python3.10 /usr/local/bin/python3
sudo cp /usr/local/bin/pip3.10 /usr/local/bin/pip3
sudo cp /usr/local/bin/python3.10 /usr/local/bin/python
sudo cp /usr/local/bin/pip3.10 /usr/local/bin/pip
# /usr/local/bin



# nvim
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum install -y neovim python3-neovim


# node.js
sudo dnf groupinstall "Development Tools"
sudo dnf module list nodejs
sudo dnf module install nodejs/development

# tree-sitter-cli
sudo yum install cargo
rustup update
cargo install tree-sitter-cli
# warning: be sure to add `/root/.cargo/bin` to your PATH to be able to run the installed binaries

# ripgrep
sudo yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
sudo yum install ripgrep

#lazygit
sudo dnf copr enable atim/lazygit 
sudo dnf install lazygit

#gdu
curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
sudo chmod +x gdu_linux_amd64
sudo mv gdu_linux_amd64 /usr/bin/gdu

#botom
sudo dnf copr enable atim/bottom 
sudo dnf install bottom

cd ..

# install AstroNvim

mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
