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
 )

(package! flycheck-ocaml)
(package! ocp-indent)
; TODO: disable it in systems w/ IME
(package! fcitx)

(package! llvm-mode :ignore t)
(package! tablegen-mode :ignore t)

(package! spinner) ; required by lsp-mode
(package! lsp-mode)
(package! lsp-ui)
(package! company-lsp)

(package! ccls)

(package! awesome-tab :recipe (:fetcher github :repo "manateelazycat/awesome-tab"))
