## Linux environment instalation
![linux](https://user-images.githubusercontent.com/47476901/168484079-3cc0536e-0306-441a-8139-3e7cd5e4e382.PNG)

### Install all environment
```bash
curl -s https://raw.githubusercontent.com/erik-451/Custom-shells/main/Linux/install.sh| bash
```

### Install only tmux
```bash
curl -s https://raw.githubusercontent.com/erik-451/Custom-shells/main/Linux/.tmux.conf.md > $HOME/.tmux.conf
```


# Tmux shortcuts

##### **Pantalla divida**

- Horizontal: `Ctrl +x  flecha_abajo`
- Vertical: `Ctrl +x  flecha_derecha`


##### **Ventanas**

- Cerrar ventana: `Ctrl +x  x`
- Abrir ventana: `Ctrl +x  c`
- Renombrar Panel: `Ctrl +x ,`
- Zoom en panel: `Ctrl +x z`
- Cambiar de panel: `Ctrl +x o || Ctrl +x (click en panel) || Ctrl +x flechas`
- Cambiar posicion Panel:` Ctrl +x espacio || Ctrl +x Ctrl +o`
- Ver sesiones activas: `Ctrl +x s`
- Cambiar de Sesion de Ventana: `Ctrl +x numero_ventana|| Ctrl +x (Click numero_Ventana)`

# Sources:
- [Tmux](https://github.com/tmux/tmux/wiki)
- [oh-my-posh](https://ohmyposh.dev/)
- [NerdFonts](https://www.nerdfonts.com/)
- [Icons in terminal](https://github.com/sebastiencs/icons-in-terminal)
