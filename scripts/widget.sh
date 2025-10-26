# i3-msg "workspace 1; append_layout ~/.config/i3/1new.json"
i3-msg "append_layout ~/.config/i3/1new.json"
sleep 0.3
(kitty zsh -c "neofetch; exec zsh" &)
sleep 0.3
(kitty zsh -c "unimatrix -l k -s 95; exec zsh" &)
sleep 0.3
(kitty zsh -c "peaclock; exec zsh" &)
sleep 0.3
(kitty zsh -c "cava; exec zsh" &)
