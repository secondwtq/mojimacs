
PATH_SPACEMACS="$HOME/spacemacs.d"
PATH_DOOM="$HOME/doom.d"

if [[ -e $HOME/.emacs.d/Makefile && -e $HOME/.emacs.d/modules ]];
then
	echo "You are using Doom, switching to Spacemacs ..."
	mv $HOME/.emacs.d $HOME/.emacs.t
	mv $PATH_SPACEMACS $HOME/.emacs.d
	mv $HOME/.emacs.t $PATH_DOOM
elif [[ -e $HOME/.emacs.d/spacemacs.mk && -e $HOME/.emacs.d/layers ]];
then
	echo "Your are using Spacemacs and CALLING THE WRONG SCRIPT ..."
else
	echo "Unable to determine identity of your Emacs."
fi
