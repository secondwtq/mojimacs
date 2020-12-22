
;; Other bindings you should get used to:
;;  * <C-hjkl> for window nav.

;; TextMate-esque keys:
;;  * <M-1234567890> for different workspaces
;;  * <M-n/s/w>
;;  * <M-N/W>
;;  * <M-=-+> for text scaling
;;  * <M-f> - swiper
;;    <C-n/p>
;;  * <C-s> - isearch, <C-r> (backward)

;; Other keys:
;; * <C-;>
;; * <C-z> - evil-emacs-state
;;
;; * <TAB> - smart dispatch - yas, company

;; github.com/hlissner/doom-emacs/wiki/Customization
;; "Customize my keybindings"
;; github.com/hlissner/doom-emacs/blob/develop/modules/config/default/%2Bbindings.el
;; github.com/hlissner/doom-emacs/blob/ce38a80cf81909b66a4f50ddac2396c49a7c4e0e/modules/config/default/%2Bbindings.el
(map!

 (:map override

   "M-1"   (λ! (+workspace/switch-to 0))
   "M-2"   (λ! (+workspace/switch-to 1))
   "M-3"   (λ! (+workspace/switch-to 2))
   "M-4"   (λ! (+workspace/switch-to 3))
   "M-5"   (λ! (+workspace/switch-to 4))
   "M-6"   (λ! (+workspace/switch-to 5))
   "M-7"   (λ! (+workspace/switch-to 6))
   "M-8"   (λ! (+workspace/switch-to 7))
   "M-9"   (λ! (+workspace/switch-to 8))
   "M-0" #'+workspace/switch-to-last)

   "s-o" #'counsel-find-file
   "s-s" #'save-buffer
   "s-z" #'undo-tree-undo
   "s-x" #'evil-delete-char
   "s-c" #'evil-yank
   "s-v" #'evil-paste-after
   "s-q" #'save-buffers-kill-terminal

   "M-a"   (λ! (scroll-up-whole))

   ;; "s-x" #'counsel-M-x

    (:leader
      (:desc "ALT. Buffer" :nv "TAB" #'evil-switch-to-windows-last-buffer)

		(:desc "project" :prefix "p"
      ;; Spacemacs
			:desc "？Buffer" 						:n "b" #'projectile-switch-to-buffer
			:desc "？Project" 						:n "p" #'projectile-switch-project
			:desc "❌KILL Buffer" 				:n "k" #'projectile-kill-buffers
			:desc "？Files"							:n "f" #'projectile-find-file
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
      :desc "PREV"         :n "p" #'previous-buffer
      :desc "？"           :n "b" #'persp-switch-to-buffer)

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
      :desc "TREE"          :n "t" #'+treemacs/toggle
      ;; recentf-open-files opens a fullscreen dialog with ID selection ...
      ;;  not quite Spacemacy, so use the counsel one
      :desc "？Recent"       :n "r" #'recentf-open-files
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
    :desc "CLOSE"      :n "d" #'+workspace/close-window-or-workspace
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

    (:desc "layout" :prefix "l"
      ;; since we don't have transient state in DOOM yet, we are just using leader keys
      ;;  plus transient state for layouts doesn't seems to be useful for me
      ;; Spacemacs
      ;; TODO: what's the relationship between persp and eyebrowse?
      ;;  I think the "workspaces" in Spacemacs are managed by eyebrowse
      ;;  but it's using persp functions
      :desc "NEXT"             :n "n" #'+workspace/switch-right
      :desc "PREV"             :n "p" #'+workspace/switch-left
      :desc "KILL"             :n "d" #'+workspace/delete

      ;; extensions
      :desc "NEW"              :n "c" #'+workspace/new
      :desc "？"                :n "l" #'+workspace/switch-to
      )

  ; (spacemacs|define-transient-state layouts
  ; :title "Layouts Transient State"
  ; :hint-is-doc t
  ; :dynamic-hint (spacemacs//layouts-ts-hint)
  ; :bindings
  ; ;; need to exit in case number doesn't exist
  ; ("?" spacemacs//layouts-ts-toggle-hint)
  ; ("1" spacemacs/persp-switch-to-1 :exit t)
  ; ("2" spacemacs/persp-switch-to-2 :exit t)
  ; ("3" spacemacs/persp-switch-to-3 :exit t)
  ; ("4" spacemacs/persp-switch-to-4 :exit t)
  ; ("5" spacemacs/persp-switch-to-5 :exit t)
  ; ("6" spacemacs/persp-switch-to-6 :exit t)
  ; ("7" spacemacs/persp-switch-to-7 :exit t)
  ; ("8" spacemacs/persp-switch-to-8 :exit t)
  ; ("9" spacemacs/persp-switch-to-9 :exit t)
  ; ("0" spacemacs/persp-switch-to-0 :exit t)
  ; ("C-1" spacemacs/persp-switch-to-1)
  ; ("C-2" spacemacs/persp-switch-to-2)
  ; ("C-3" spacemacs/persp-switch-to-3)
  ; ("C-4" spacemacs/persp-switch-to-4)
  ; ("C-5" spacemacs/persp-switch-to-5)
  ; ("C-6" spacemacs/persp-switch-to-6)
  ; ("C-7" spacemacs/persp-switch-to-7)
  ; ("C-8" spacemacs/persp-switch-to-8)
  ; ("C-9" spacemacs/persp-switch-to-9)
  ; ("C-0" spacemacs/persp-switch-to-0)
  ; ("<tab>" spacemacs/jump-to-last-layout)
  ; ("<return>" nil :exit t)
  ; ("C-h" persp-prev)
  ; ("C-l" persp-next)
  ; ("a" persp-add-buffer :exit t)
  ; ("A" persp-import-buffers :exit t)
  ; ("d" spacemacs/layouts-ts-close)
  ; ("D" spacemacs/layouts-ts-close-other :exit t)
  ; ("h" spacemacs/layout-goto-default :exit t)
  ; ("L" persp-load-state-from-file :exit t)
  ; ("o" spacemacs/select-custom-layout :exit t)
  ; ("r" persp-remove-buffer :exit t)
  ; ("R" spacemacs/layouts-ts-rename :exit t)
  ; ("s" persp-save-state-to-file :exit t)
  ; ("S" persp-save-to-file-by-names :exit t)
  ; ("t" persp-temporarily-display-buffer :exit t)
  ; ("w" spacemacs/workspaces-transient-state/body :exit t)
  ; ("x" spacemacs/layouts-ts-kill)
  ; ("X" spacemacs/layouts-ts-kill-other :exit t))

  ; (:desc "workspace" :prefix "TAB"
  ; :desc "Display tab bar"          :n "TAB" #'+workspace/display
  ; :desc "New workspace"            :n "n"   #'+workspace/new
  ; :desc "Load workspace from file" :n "l"   #'+workspace/load
  ; :desc "Load last session"        :n "L"   (λ! (+workspace/load-session))
  ; :desc "Save workspace to file"   :n "s"   #'+workspace/save
  ; :desc "Autosave current session" :n "S"   #'+workspace/save-session
  ; :desc "Switch workspace"         :n "."   #'+workspace/switch-to
  ; :desc "Kill all buffers"         :n "x"   #'doom/kill-all-buffers
  ; :desc "Delete session"           :n "X"   #'+workspace/kill-session
  ; :desc "Delete this workspace"    :n "d"   #'+workspace/delete
  ; :desc "Load session"             :n "L"   #'+workspace/load-session
  ; :desc "Next workspace"           :n "]"   #'+workspace/switch-right
  ; :desc "Previous workspace"       :n "["   #'+workspace/switch-left
  ; :desc "Switch to 1st workspace"  :n "1"   (λ! (+workspace/switch-to 0))
  ; :desc "Switch to 2nd workspace"  :n "2"   (λ! (+workspace/switch-to 1))
  ; :desc "Switch to 3rd workspace"  :n "3"   (λ! (+workspace/switch-to 2))
  ; :desc "Switch to 4th workspace"  :n "4"   (λ! (+workspace/switch-to 3))
  ; :desc "Switch to 5th workspace"  :n "5"   (λ! (+workspace/switch-to 4))
  ; :desc "Switch to 6th workspace"  :n "6"   (λ! (+workspace/switch-to 5))
  ; :desc "Switch to 7th workspace"  :n "7"   (λ! (+workspace/switch-to 6))
  ; :desc "Switch to 8th workspace"  :n "8"   (λ! (+workspace/switch-to 7))
  ; :desc "Switch to 9th workspace"  :n "9"   (λ! (+workspace/switch-to 8))
  ; :desc "Switch to last workspace" :n "0"   #'+workspace/switch-to-last)

    )
  )

(map!
    :n "gt" #'awesome-tab-forward-tab
    :n "gT" #'awesome-tab-backward-tab
 )
