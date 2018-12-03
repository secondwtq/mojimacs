;;; config/secondwtq/config.el -*- lexical-binding: t; -*-

(load! "env")
(load! "+theme")

;; from Spacemacs layers/+spacemacs/spacemacs-ui-visual/funcs.el
(defun neotree-find-project-root ()
  (interactive)
  (if (neo-global--window-exists-p)
      (neotree-hide)
    (let ((origin-buffer-file-name (buffer-file-name)))
      (neotree-find (projectile-project-root))
      (neotree-find origin-buffer-file-name))))

(load! "+bindings")

;; www.emacswiki.org/emacs/TransparentEmacs EmacsWiki: Transparent Emacs
;; (push '(alpha . (96 . 95)) default-frame-alist)
(push '(alpha . (97 . 96)) default-frame-alist)

;; how she looks
(setq doom-theme 'doom-one-light)
;; mostly writes in monospace w/ aesthetics
;; (setq doom-font (font-spec :family "Fira Code" :size 12))
(setq doom-font (font-spec :family "Input Mono Narrow" :size 12 :weight 'regular))
(setq doom-variable-pitch-font (font-spec :family "Lucida Grande" :size 13))
;; (setq doom-big-font ())
;; a little knowledge of Chinese would be great
(setq doom-unicode-font (font-spec :family "Source Han Serif SC"))

;;(let ((paths '(
;;               "/Users/ooolive/.opam/4.06.1/bin"
;;               "/Users/ooolive/.stack/snapshots/x86_64-osx/lts-9.1/8.0.2/bin"
;;               "/Users/ooolive/.nvm/versions/node/v7.7.2/bin"
;;               )))
  (setenv "PATH" (concat (mapconcat 'identity secondwtq-paths ":") ":" (getenv "PATH")))
  ;; can't we propagate the new "PATH" env. automatically?
  (setq eshell-path-env (getenv "PATH"))
  (setq exec-path (append secondwtq-paths exec-path))
;;)

(setq-default line-spacing 1)
(setq scroll-margin 3)
(setq +doom-modeline-height 1)
(setq confirm-kill-emacs nil)
; (setq-default tide-node-executable "/Users/ooolive/.nvm/versions/node/v7.7.2/bin/node")

; TODO: disable it in systems w/ IME
(require 'fcitx)
(fcitx-aggressive-setup)

(require 'dtrt-indent)
(dtrt-indent-mode 1)

;; how she interacts
;; github.com/hlissner/doom-emacs/tree/master/modules/completion/company
;; (require 'company)
(after! company
    (setq company-idle-delay 0.2
        company-minimum-prefix-length 1))

(after! neotree
  (setq neo-hidden-regexp-list (append '("^\\.DS_Store$") neo-hidden-regexp-list))
  )

(after! smartparens
  (sp-with-modes 'tuareg-mode
    (sp-local-pair "'" nil :actions nil)
    (sp-local-pair "`" nil :actions nil)))

(def-package! ocp-indent
  :after tuareg
  :config
  (ocp-setup-indent))

(def-package! flycheck-ocaml
  :after merlin
  :config
  (setq merlin-error-after-save nil)
  (add-hook 'merlin-mode-hook #'flycheck-mode)
  (flycheck-ocaml-setup))

;; github.com/ocaml/tuareg/issues/162
;; Missing function tuareg-abbrev-hook being called · Issue #162 · ocaml/tuareg
(defun tuareg-abbrev-hook () ())

(after! fill-column-indicator
  (setq fci-rule-color "#e0e0e0")
  ; TODO: why this assignment does not work?
  (setq fci-column 96))

(setq recentf-exclude '("~$" "/tmp/" "/ssh:" "/sudo:"))

;; (setq doom-line-number-pad-char ?\u2002)

;; NOTE: whitespace-mode is a performance nightmare,
;;  and have several bugs in action,
;;  so it's disabled for now.
;;
;; (setq whitespace-style
;;       '(face tabs spaces trailing space-before-tab
;;              newline indentation empty space-after-tab
;;              space-mark tab-mark newline-mark lines))

;; (setq whitespace-display-mappings
;;       '(
;;         (space-mark 32 [183] [46]) ; space - dot
;;         (newline-mark 10 [8617 10])
;;         (space-mark 160 [164] [95])
;;         (tab-mark 9 [187 9] [92 9])
;;         ))

;; (setq whitespace-line-column 84)
;; (global-whitespace-mode)

;; (require 'color)
;;   (set-face-attribute
;;    'whitespace-space
;;    nil
;;    :background nil
;;    :foreground (color-darken-name (face-background 'default) 10))
;;   (set-face-attribute
;;    'whitespace-newline
;;    nil
;;    :background nil
;;    :foreground (color-darken-name (face-background 'default) 12))

;; ; (require 'nlinum)
; (setq nlinum-relative-redisplay-delay 0)
(setq display-line-numbers-type 'relative)
(setq-default display-line-numbers-width 3
              display-line-numbers-widen t
              display-line-numbers-current-absolute t)

; brew install ttfautohint
; brew tap caryll/tap
; brew install otfcc-mac64
; npm install
; make custom-config family='Iosevka Linum' design='type v-zero-unslashed v-three-twoarks'
; make custom

; TODO: adapt to both Emacs 25 & 26
(set-face-attribute
 ; 'linum
 'line-number
 nil
 :foreground "#aaaeb1"
 :height 72
 :family "Iosevka Term"
 )
(set-face-attribute
 ; 'nlinum-relative-current-face
 'line-number-current-line
 nil
 :foreground "#51667b"
 ; :weight 'semi-bold
 ; TODO: it's (hl-line linum)
 :inherit
 ; 'linum
 'line-number
 )
(set-face-attribute
 'mode-line nil
 :background "#ffffff"
 :family "Lucida Grande")

(custom-set-faces
  '(default ((t (:background "#ffffff")))))

;; ENVIRONMENT FOR:
;;  OCaml, Haskell, C/C++, TypeScript, Emacs Lisp
;;  LaTeX, Markdown, Org
;;  maybe Ruby, Rust, Elm, ASM, LLVM, Shaders, Shell
;;
;; PROBLEMS:
;;  * Modeline: shorter, don't use monospace font, also need more customization
;;  * is there a theme with #ffffff background? I'd like to have one here
;;  * evil-goggles does not seem to work
;;  * better Dashboard
;;  * how to do comment?
;;  * do not confirm on exit √
;;  * I don't like octicons for neotree
;;  * the completion popup is usually messed up
;;  * exec-path broken, cannot find node, eshell cannot run jbuilder ... (so how it finds ocamlmerlin?) √
;;  * better handling of different environments (continuation of the exec-path problem)
;;  * company-tide gives no type information
;;  * a little bit of spell checking is great
;;  * line number too wide
;;  * I want to have aliases for projects just for easy searching
;;  * can we hide .DS_Store in neotree? √
;;  * need relative line number √
;;  * indentation when editing OCaml is very strange
;;  * OCaml completion of `in` is also very strange ...
;;  * editing JavaScript is a little laggy
;;  * when cursor is at top/bottom border, display more lines (scrolloff) √
;;  * <C-u/d> behavior is diff. from Vim (Vim moves the file, not the cursor, Evil only moves the cursor)
;;  * global whitespace mode ... and its style ... √
;;  * line number can be in different font √
;;  * line number can have unique bg/border (continuation of the linum issue)
;;  * need easy-motion or avy
;;  * editing elisp doesn't enable company by default
;;  * Chinese support √
;;  * No linum in org-mode
;;  * Do not "projectile file" on ~
;;  * Some host-OS-wide (yes host-OS since Emacs IS AN OS by itself) hotkey to switch to Emacs & Browser & Terms & Notes ...
;;  * Maybe we need another title text? or borderless window?
;;  * use Treemacs instead of neotree
;;  * ~~whitespace + company-mode~~
;;  * revive whitespace-mode
;;
;;  * ~~relative line number doesnot work~~
;;  * ~~recentf cleaning requires root password ...~~
;;  * why opening file w/ shell opens 2 windows ...
