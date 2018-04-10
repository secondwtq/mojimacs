
;; github.com/hlissner/doom-emacs/wiki/Customization
;; "Customize my keybindings"
(map!
	(:leader
		(:desc "project" :prefix "p"
      ;; Spacemacs
			:desc "？Buffer" 						:n "b" #'counsel-projectile-switch-to-buffer
			:desc "？Project" 						:n "p" #'counsel-projectile-switch-project
			:desc "KILL Buffer" 				:n "k" #'projectile-kill-buffers
			:desc "？Files"							:n "f" #'projectile-recentf
			:desc "？Recent" 						:n "r" #'counsel-projectile-find-file)

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

    )
  )
