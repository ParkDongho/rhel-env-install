mkdir tmp && cd tmp

#gcc
sudo yum install gcc
sudo yum groupinstall "Development Tools" 

#node.js
sudo dnf groupinstall "Development Tools"
sudo dnf module list nodejs
sudo dnf module install nodejs/development

#tree-sitter-cli
sudo yum install rustc
sudo yum install cargo
sudo cargo install tree-sitter-cli
# warning: be sure to add `/root/.cargo/bin` to your PATH to be able to run the installed binaries

#ripgrep
sudo yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
sudo yum install ripgrep

#lazygit
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit

#gdu
sudo curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
sudo chmod +x gdu_linux_amd64
sudo mv gdu_linux_amd64 /usr/bin/gdu

#botom
sudo dnf copr enable atim/bottom -y
sudo dnf install bottom

cd ..
