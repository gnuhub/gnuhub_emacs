;;(global-hl-line-mode 1)
(global-linum-mode t)
(display-time-mode 1)

;; http://www.emacswiki.org/emacs/MultiTerm
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'multi-term)
(setq multi-term-program "/bin/zsh")
