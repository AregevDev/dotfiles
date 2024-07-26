# .bashrc

## Global ##
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

## Aliases ##

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f ~/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source ~/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## better-ls
if [ -f ~/.config/synth-shell/better-ls.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source ~/.config/synth-shell/better-ls.sh
fi

##-----------------------------------------------------
## alias
if [ -f ~/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source ~/.config/synth-shell/alias.sh
fi

##-----------------------------------------------------
## better-history
if [ -f ~/.config/synth-shell/better-history.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source ~/.config/synth-shell/better-history.sh
fi
