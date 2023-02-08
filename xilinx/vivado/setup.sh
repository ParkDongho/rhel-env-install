git clone https://github.com/Digilent/vivado-boards.git
sudo mv ./vivado-boards/new/board_files /tools/Xilinx/Vivado/2022.2/data/boards
rm -rf vivado-boards

cd /tools/Xilinx/Vivado/2022.2/data/xicom/cable_drivers/lin64/install_script/install_drivers && sudo ./install_drivers
sudo adduser $USER dualout
