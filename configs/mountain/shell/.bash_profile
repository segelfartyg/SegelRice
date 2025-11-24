#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if uwsm check may-start; then
	exec uwsm start hyprland.desktop
fi


eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/dracula.omp.json)"
