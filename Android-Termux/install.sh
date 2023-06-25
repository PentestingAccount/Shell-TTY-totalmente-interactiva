######################
### ANDROID TERMUX ###
######################

# Teclas de termux #
echo "[*] Instalando teclas termux"
echo "extra-keys = [['ESC','CTRL','ALT','HOME','UP','END','PGUP'], \ \n             ['TAB','/','-','LEFT','DOWN','RIGHT','PGDN']]"  >> $HOME/.termux/termux.properties

#################
# Entorno shell #
#################
# Descargando git zsh tmux curl
echo "[*] Instalando dependencias"
apt install -y git zsh tmux curl xclip wget
##############
# oh my posh #
##############
# Descargando oh my posh
#echo "[*] Descargando oh-my-posh"
#wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-arm64 -O $HOME/../usr/bin/oh-my-posh
#chmod +x $HOME/../usr/bin/oh-my-posh

# Descargando temas de oh my posh
#echo "[*] Descargando temas..."
#mkdir ~/.poshthemes
#wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
#unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
#chmod u+rw ~/.poshthemes/*.json
#rm ~/.poshthemes/themes.zip

# zsh por predeterminada
chsh -s zsh


#############
# Oh my zsh #
#############
# Se instala oh my zsh porque en termux nos brinda algunas caracteristicas extras. Pero usamos en su mayoria oh-my-posh como entorno
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Aplicando tema a la shell || puedes sustituir el tema por el que mas te guste
# temas: https://github.com/JanDeDobbeleer/oh-my-posh/tree/main/themes
echo 'eval "$(oh-my-posh init zsh --config ~/.poshthemes/slimfat.omp.json)"' >> $HOME/.zshrc

##########
## TMUX ##
##########
# Usando el tema de tmux personalizado
echo "[*] Descargando entorno tmux"
curl -s "https://raw.githubusercontent.com/erik-451/Custom-shells/main/Android-Termux/.tmux.conf.md" > $HOME/.tmux.conf

# Asignamos que la shell se inicie con tmux
echo -e "if command -v tmux>/dev/null; then\n   [[ ! \$TERM =~ screen ]] && [ -z \$TMUX ] && exec tmux\nfi\n" >> $HOME/.zshrc
echo "[*] Success!!!"


