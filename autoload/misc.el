;;; ~/.config/doom/autoload/misc.el -*- lexical-binding: t; -*-


; TODO: adapt to both Emacs 25 & 26
(defun setup-faces ()
  (set-face-attribute
   'doom-modeline-inactive-bar nil
   :inherit 'mode-line)
  (set-face-attribute
   'mode-line nil
   :background "#ffffff"
   :family "Lucida Grande")
  (set-face-attribute
   'mode-line-inactive nil
   :family "Lucida Grande"
   :inherit 'mode-line)
  (set-face-attribute
   'line-number  ; 'linum
   nil
   :foreground "#aaaeb1"
   :height 72
   :family "Iosevka Term"
   )
  (set-face-attribute
   'line-number-current-line  ; 'nlinum-relative-current-face
   nil
   :foreground "#51667b"
; :weight 'semi-bold
; TODO: it's (hl-line linum)
   :inherit
   'line-number ; 'linum
   ))

(add-hook 'doom-init-ui-hook #'setup-faces)
(add-hook 'doom-init-hook #'setup-faces)
(add-hook 'doom-post-init-hook #'setup-faces)
