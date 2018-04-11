;;; config/secondwtq/config.el -*- lexical-binding: t; -*-

;; from Spacemacs layers/+spacemacs/spacemacs-ui-visual/funcs.el
(defun neotree-find-project-root ()
  (interactive)
  (if (neo-global--window-exists-p)
      (neotree-hide)
    (let ((origin-buffer-file-name (buffer-file-name)))
      (neotree-find (projectile-project-root))
      (neotree-find origin-buffer-file-name))))

(load! +bindings)
(load! env)

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

(setq-default line-spacing 5)
(setq +doom-modeline-height 1)
; (setq-default tide-node-executable "/Users/ooolive/.nvm/versions/node/v7.7.2/bin/node")

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

;; (require 'smartparens)
(after! smartparens
  (progn (sp-local-pair 'tuareg-mode "'" nil :actions nil)
  (sp-local-pair 'tuareg-mode "`" nil :actions nil)))
;; (require 'merlin)
(require 'flycheck-ocaml)
(after! merlin
  (progn (setq merlin-error-after-save nil)
    (after! flycheck-ocaml (flycheck-ocaml-setup))))
(after! flycheck-ocaml
  (add-hook 'tuareg-mode-hook #'flycheck-mode))

;; PROBLEMS:
;;  * Modeline: shorter, don't use monospace font, also need more customization
;;  * is there a theme with #ffffff background? I'd like to have one here
;;  * evil-goggles does not seem to work
;;  * better Dashboard
;;  * how to do comment?
;;  * do not confirm on exit
;;  * I don't like octicons for neotree
;;  * the completion popup is messed up
;;  * exec-path broken, cannot find node, eshell cannot run jbuilder ... (so how it finds ocamlmerlin?)
;;  * company-tide gives no type information
;;  * a little bit of spell checking is great
;;  * line number too wide
;;  * I want to have aliases for projects just for easy searching
;;  * can we hide .DS_Store in neotree? √
;;  * need relative line number √
;;  * indentation when editing OCaml is very strange

