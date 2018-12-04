;; -*- no-byte-compile: t; -*-
;;; config/secondwtq/packages.el

; (package! eyebrowse)

(disable-packages! company-irony company-irony-c-headers flycheck-irony irony irony-eldoc ivy-rtags rtags)

(package! flycheck-ocaml)
(package! ocp-indent)
; TODO: disable it in systems w/ IME
(package! fcitx)

(package! llvm-mode)
(package! tablegen-mode)

(package! spinner) ; required by lsp-mode
(package! lsp-mode)
(package! lsp-ui)
(package! company-lsp)

(package! ccls)
