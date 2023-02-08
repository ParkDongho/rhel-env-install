mkdir tmp && cd tmp

# gcc
sudo yum -y install gcc
sudo yum -y groupinstall "Development Tools" 

# node.js
sudo dnf -y groupinstall "Development Tools"
sudo dnf -y module list nodejs
sudo dnf -y module install nodejs/development

# tree-sitter-cli
# sudo yum install rustc
sudo yum install cargo
curl https://sh.rustup.rs -sSf | sh
cargo install tree-sitter-cli
# warning: be sure to add `/root/.cargo/bin` to your PATH to be able to run the installed binaries

# ripgrep
sudo -y yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
sudo -y yum install ripgrep

#lazygit
sudo -y dnf copr enable atim/lazygit 
sudo -y dnf install lazygit

#gdu
curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
sudo chmod +x gdu_linux_amd64
sudo mv gdu_linux_amd64 /usr/bin/gdu

#botom
sudo -y dnf copr enable atim/bottom 
sudo -y dnf install bottom

cd ..

# install AstroNvim

mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
