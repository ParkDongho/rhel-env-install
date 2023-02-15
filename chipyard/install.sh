# install conda
mkdir tmp && cd tmp
wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh
sha256sum Anaconda3-2022.10-Linux-x86_64.sh
bash Anaconda3-2022-2022.10-Linux-x86_64.sh

cd ~ && source .zshrc && cd -

conda --version
conda update --all
conda install -n base conda-lock
conda activate base

cd ~/dev
git clone https://github.com/ucb-bar/chipyard.git
cd chipyard
# checkout latest official chipyard release
# note: this may not be the latest release if the documentation version != "stable"
git checkout 1.8.1
./build-setup.sh riscv-tools
