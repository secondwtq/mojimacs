;;; config/secondwtq/config.el -*- lexical-binding: t; -*-

(load! env)

;; from Spacemacs layers/+spacemacs/spacemacs-ui-visual/funcs.el
(defun neotree-find-project-root ()
  (interactive)
  (if (neo-global--window-exists-p)
      (neotree-hide)
    (let ((origin-buffer-file-name (buffer-file-name)))
      (neotree-find (projectile-project-root))
      (neotree-find origin-buffer-file-name))))

(load! +bindings)

;; how she looks
(setq doom-theme 'doom-one-light)
;; mostly writes in monospace w/ aesthetics
(setq doom-font (font-spec :family "Fira Code" :size 12))
(setq doom-variable-pitch-font (font-spec :family "Lucida Grande"))
;; (setq doom-big-font ())
;; a little knowledge of Chinese would be great
(setq doom-unicode-font (font-spec :family "Source Han Serif SC"))
;; it goes like 天地玄黄 宇宙洪荒 日月盈昃 晨宿列张

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

(setq-default line-spacing 3)
(setq scroll-margin 3)
(setq +doom-modeline-height 1)
(setq confirm-kill-emacs nil)
; (setq-default tide-node-executable "/Users/ooolive/.nvm/versions/node/v7.7.2/bin/node")

(require 'fcitx)
(fcitx-aggressive-setup)

;; how she interacts
;; github.com/hlissner/doom-emacs/tree/master/modules/completion/company
;; (require 'company)
(after! company
    (setq company-idle-delay 0.2
        company-minimum-prefix-length 1))

(nlinum-relative-on)
(setq nlinum-relative-redisplay-delay 0)

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

(set-face-attribute
 'linum nil
 :foreground "#aaaeb1"
 :height 110
 :family "Avenir Next Condensed")
(set-face-attribute
 'nlinum-relative-current-face nil
 :foreground "#51667b"
 :weight 'semi-bold
 ; TODO: it's (hl-line linum)
 :inherit 'linum)
(set-face-attribute
 'mode-line nil
 :background "#ffffff"
 :family "Lucida Grande")

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
;;  * do not confirm on exit
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
;;  * editing JavaScript is a little laggy
;;  * when cursor is at top/bottom border, display more lines (scrolloff)
;;  * <C-u/d> behavior is diff. from Vim (Vim moves the file, not the cursor, Evil only moves the cursor)
;;  * global whitespace mode ... and its style ...
;;  * line number can be in different font
;;  * need easy-motion or avy
;;  * editing elisp doesn't enable company by default
;;  * Chinese support
;;  * No linum in org-mode
;;  * Do not "projectile file" on ~
