
PATH_SPACEMACS="$HOME/spacemacs.d"
PATH_DOOM="$HOME/doom.d"

if [[ -e $HOME/.emacs.d/Makefile && -e $HOME/.emacs.d/modules ]];
then
	echo "You are using Doom and CALLING THE WRONG SCRIPT ..."
elif [[ -e $HOME/.emacs.d/spacemacs.mk && -e $HOME/.emacs.d/layers ]];
then
	echo "Your are using Spacemacs, switching to Doom ..."
	mv $HOME/.emacs.d $HOME/.emacs.t
	mv $PATH_DOOM $HOME/.emacs.d
	mv $HOME/.emacs.t $PATH_SPACEMACS
else
	echo "Unable to determine species of your Emacs."
fi
