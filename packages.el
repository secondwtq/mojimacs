;; -*- no-byte-compile: t; -*-
;;; config/secondwtq/packages.el

; (package! eyebrowse)

(disable-packages!
 company-irony
 company-irony-c-headers
 flycheck-irony
 irony
 irony-eldoc
 ivy-rtags
 rtags
 graphql-mode
 dhall-mode
 toml-mode
 flycheck-cask ; enable that when you need to write some elisp package ...
 nose
 python-pytest
 ob-rust
 ob-translate
 ob-mango
 ; hl-line
 )

(package! flycheck-ocaml)
(package! ocp-indent)

; 2.6.1.1-fce01db (used by PLFA)
(package! agda-input
    :recipe (:host github :repo "agda/agda"
             :files ("src/data/emacs-mode/agda-input.el")
             :nonrecursive t)
  :pin "fce01db")

(package! agda2-mode
    :recipe (:host github :repo "agda/agda"
             :files ("src/data/emacs-mode/*.el"
                     (:exclude "agda-input.el"))
             :nonrecursive t)
  :pin "fce01db")

; TODO: disable it in systems w/ IME
;(package! fcitx)

; (package! llvm-mode :ignore t)
; (package! tablegen-mode :ignore t)

; (package! spinner) ; required by lsp-mode
; (package! lsp-mode)
; (package! lsp-ui)
; (package! company-lsp)

; (package! ccls)

; (package! awesome-tab :recipe (:fetcher github :repo "manateelazycat/awesome-tab"))

;; (package! ivy-posframe)
;; (package! evil-matchit :recipe (:fetcher github :repo "redguardtoo/evil-matchit" :commit "7d65b4167b1f0086c2b42b3aec805e47a0d355c4"))
