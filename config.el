;;; config/secondwtq/config.el -*- lexical-binding: t; -*-

(load! +bindings)

(setq doom-theme 'doom-one-light)

;; github.com/hlissner/doom-emacs/tree/master/modules/completion/company
(require 'company)
(after! company
    (setq company-idle-delay 0.2
        company-minimum-prefix-length 3))
