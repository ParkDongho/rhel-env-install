# Install Coursier
cd ~/.local/share/applications
curl -fLo coursier https://github.com/coursier/launchers/raw/master/coursier && chmod +x coursier
cd -

cp ./code/nvim-metals.lua ~/.config/nvim/lua/configs/nvim-metals.lua
cp ./code/plugins.lua ~/.config/nvim/lua/core/plugins.lua
