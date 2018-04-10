
;; github.com/hlissner/doom-emacs/wiki/Customization
;; "Customize my keybindings"
(map!
	(:leader
		(:desc "project" :prefix "p"
      ;; Spacemacs
			:desc "？Buffer" 						:n "b" #'counsel-projectile-switch-to-buffer
			:desc "？Project" 						:n "p" #'counsel-projectile-switch-project
			:desc "KILL Buffer" 				:n "k" #'projectile-kill-buffers
			:desc "？Files"							:n "f" #'counsel-projectile-find-file
			:desc "？Recent" 						:n "r" #'projectile-recentf
      :desc "TREE"                :n "t" #'neotree-find-project-root)

      ;     :desc "Browse project"          :n  "." #'+default/browse-project
      ;     :desc "Find other file"         :n  "o" #'projectile-find-other-file
      ;     :desc "List project tasks"      :n  "t" #'+ivy/tasks
      ; (spacemacs/set-leader-keys
      ;   "pd" 'projectile-find-dir
      ;   "pF" 'projectile-find-file-dwim
      ;   "ph" 'helm-projectile
      ;   "pv" 'projectile-vc)
      ; (spacemacs/set-leader-keys
      ;   "p!" 'projectile-run-shell-command-in-root
      ;   "p&" 'projectile-run-async-shell-command-in-root
      ;   "p%" 'projectile-replace-regexp
      ;   "pa" 'projectile-toggle-between-implementation-and-test
      ;   "pc" 'projectile-compile-project
      ;   "pD" 'projectile-dired
      ;   "pg" 'projectile-find-tag
      ;   "pG" 'projectile-regenerate-tags
      ;   "pI" 'projectile-invalidate-cache
      ;   "pR" 'projectile-replace
      ;   "pT" 'projectile-test-project))

		; (:desc "help" :prefix "h"
		; 	; (:desc "def" :n "d"
  ;       ;; Spacemacs
		; 		:desc "DEF. Key"					:n "dk" #'describe-key
		; 		:desc "DEF. Func"					:n "f" #'describe-function
		; 		:desc "DEF. Variable"			:n "v" #'describe-variable
  ;       :desc "DEF. Package"      :n "p" #'describe-package

  ;       ;; extension
  ;       :desc "DEF. Mode"         :n "M" #'describe-mode
  ;       :desc "DEF. Face"         :n "F" #'describe-face)
		; 		; )

    ; (:desc "help" :prefix "h"
    ;       :n "h" help-map
    ;       :desc "Apropos"               :n  "a" #'apropos
    ;       :desc "Describe char"         :n  "c" #'describe-char
    ;       :desc "Describe DOOM module"  :n  "d" #'doom/describe-module
    ;       :desc "Open Doom manual"      :n  "D" #'doom/help
    ;       :desc "Describe function"     :n  "f" #'describe-function
    ;       :desc "Describe face"         :n  "F" #'describe-face
    ;       :desc "Info"                  :n  "i" #'info-lookup-symbol
    ;       :desc "Find documentation"    :n  "K" #'+lookup/documentation
    ;       :desc "Find library"          :n  "l" #'find-library
    ;       :desc "Command log"           :n  "L" #'global-command-log-mode
    ;       :desc "Toggle Emacs log"      :n  "m" #'view-echo-area-messages
    ;       :desc "Toggle profiler"       :n  "p" #'doom/toggle-profiler
    ;       :desc "Reload theme"          :n  "R" #'doom//reload-theme
    ;       :desc "Describe DOOM setting" :n  "s" #'doom/describe-setting
    ;       :desc "Describe at point"     :n  "." #'helpful-at-point
    ;       :desc "What face"             :n  "'" #'doom/what-face
    ;       :desc "What minor modes"      :n  ";" #'doom/what-minor-mode)
		; (spacemacs/set-leader-keys
  ; "hdb" 'describe-bindings
  ; "hdc" 'describe-char
  ; "hdl" 'spacemacs/describe-last-keys
  ; "hdP" 'configuration-layer/describe-package
  ; "hds" 'spacemacs/describe-system-info
  ; "hdt" 'describe-theme
  ; "hI"  'spacemacs/report-issue
  ; "hn"  'view-emacs-news)

    (:desc "buffer" :prefix "b"
      ;; Spacemacs
      ;; no alternative in ivy for helm-mini?
      ;; :desc "？"             :n "b" #'helm-mini
      :desc "KILL"         :n "d" #'kill-this-buffer
      :desc "NEXT"         :n "n" #'next-buffer
      :desc "PREV"         :n "p" #'previous-buffer)

  ; (spacemacs/set-leader-keys
  ; "TAB"   'spacemacs/alternate-buffer
  ; "be"    'spacemacs/safe-erase-buffer
  ; "bh"    'spacemacs/home
  ; "b C-d" 'spacemacs/kill-matching-buffers-rudely
  ; "bm"    'spacemacs/kill-other-buffers
  ; "bN"    'spacemacs/new-empty-buffer
  ; "bP"    'spacemacs/copy-clipboard-to-whole-buffer
  ; "bR"    'spacemacs/safe-revert-buffer
  ; "bs"    'spacemacs/switch-to-scratch-buffer
  ; "bY"    'spacemacs/copy-whole-buffer-to-clipboard
  ; "bw"    'read-only-mode)
  ; (:desc "buffer" :prefix "b"
  ; :desc "New empty buffer"        :n "n" #'evil-buffer-new
  ; :desc "Switch workspace buffer" :n "b" #'persp-switch-to-buffer
  ; :desc "Switch buffer"           :n "B" #'switch-to-buffer
  ; :desc "Kill other buffers"      :n "o" #'doom/kill-other-buffers
  ; :desc "Save buffer"             :n "s" #'save-buffer
  ; :desc "Pop scratch buffer"      :n "x" #'doom/open-scratch-buffer
  ; :desc "Bury buffer"             :n "z" #'bury-buffer
  ; :desc "Sudo edit this file"     :n "S" #'doom/sudo-this-file)

    (:desc "file" :prefix "f"
      ;; Spacemacs
      :desc "SAVE"         :n "s" #'save-buffer
      :desc "SAVE ALL"      :n "S" #'evil-write-all
      :desc "？"            :n "f" #'find-file
      :desc "？(literally)"  :n "l" #'find-file-literally
      :desc "TREE"          :n "t" #'neotree-show
      :desc "？Recent"       :n "r" #'counsel-recentf
      )

  ;   (spacemacs/set-leader-keys
  ; "fc" 'spacemacs/copy-file
  ; "fD" 'spacemacs/delete-current-buffer-file
  ; "fei" 'spacemacs/find-user-init-file
  ; "fed" 'spacemacs/find-dotfile
  ; "feD" 'spacemacs/ediff-dotfile-and-template
  ; "feR" 'dotspacemacs/sync-configuration-layers
  ; "fev" 'spacemacs/display-and-copy-version
  ; "fCd" 'spacemacs/unix2dos
  ; "fCu" 'spacemacs/dos2unix
  ; "fg" 'rgrep
  ; "fE" 'spacemacs/sudo-edit
  ; "fo" 'spacemacs/open-file-or-directory-in-external-app
  ; "fR" 'spacemacs/rename-current-buffer-file
  ; "fvd" 'add-dir-local-variable
  ; "fvf" 'add-file-local-variable
  ; "fvp" 'add-file-local-variable-prop-line
  ; "fy" 'spacemacs/show-and-copy-buffer-filename)
  ; (:desc "file" :prefix "f"
  ; :desc "Sudo find file"            :n ">" #'doom/sudo-find-file
  ; :desc "Find file in project"      :n "/" #'projectile-find-file
  ; :desc "Find file from here"       :n "?" #'counsel-file-jump
  ; :desc "Find other file"           :n "a" #'projectile-find-other-file
  ; :desc "Open project editorconfig" :n "c" #'editorconfig-find-current-editorconfig
  ; :desc "Find directory"            :n "d" #'dired
  ; :desc "Find file in emacs.d"      :n "e" #'+default/find-in-emacsd
  ; :desc "Browse emacs.d"            :n "E" #'+default/browse-emacsd
  ; :desc "Recent files"              :n "r" #'recentf-open-files
  ; :desc "Recent project files"      :n "R" #'projectile-recentf
  ; :desc "Yank filename"             :n "y" #'+default/yank-buffer-filename
  ; :desc "Find file in private config" :n "p" #'+default/find-in-config
  ; :desc "Browse private config"       :n "P" #'+default/browse-config)

  (:desc "window" :prefix "w"
    ;; Spacemacs
    )

  ; (spacemacs/set-leader-keys
  ;   "w TAB"  'spacemacs/alternate-window
  ;   "w2"  'spacemacs/layout-double-columns
  ;   "w3"  'spacemacs/layout-triple-columns
  ;   "wb"  'spacemacs/switch-to-minibuffer-window
  ;   "wd"  'spacemacs/delete-window
  ;   "wt"  'spacemacs/toggle-current-window-dedication
  ;   "wf"  'follow-mode
  ;   "wF"  'make-frame
  ;   "wH"  'evil-window-move-far-left
  ;   "w <S-left>"  'evil-window-move-far-left
  ;   "wh"  'evil-window-left
  ;   "w <left>"  'evil-window-left
  ;   "wJ"  'evil-window-move-very-bottom
  ;   "w <S-down>"  'evil-window-move-very-bottom
  ;   "wj"  'evil-window-down
  ;   "w <down>"  'evil-window-down
  ;   "wK"  'evil-window-move-very-top
  ;   "w <S-up>"  'evil-window-move-very-top
  ;   "wk"  'evil-window-up
  ;   "w <up>"  'evil-window-up
  ;   "wL"  'evil-window-move-far-right
  ;   "w <S-right>"  'evil-window-move-far-right
  ;   "wl"  'evil-window-right
  ;   "w <right>"  'evil-window-right
  ;   "wm"  'spacemacs/toggle-maximize-buffer
  ;   "wc"  'spacemacs/toggle-centered-buffer-mode
  ;   "wC"  'spacemacs/centered-buffer-mode-full-width
  ;   "wo"  'other-frame
  ;   "wr"  'spacemacs/rotate-windows-forward
  ;   "wR"  'spacemacs/rotate-windows-backward
  ;   "ws"  'split-window-below
  ;   "wS"  'split-window-below-and-focus
  ;   "w-"  'split-window-below
  ;   "wU"  'winner-redo
  ;   "wu"  'winner-undo
  ;   "wv"  'split-window-right
  ;   "wV"  'split-window-right-and-focus
  ;   "ww"  'other-window
  ;   "w/"  'split-window-right
  ;   "w="  'balance-windows
  ;   "w+"  'spacemacs/window-layout-toggle
  ;   "w_"  'spacemacs/maximize-horizontally)

    )
  )
