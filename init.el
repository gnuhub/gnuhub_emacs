;;(global-hl-line-mode 1)
(global-linum-mode t)
(display-time-mode 1)

;; add lisp to load-path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; add subdirs to load-path
(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to `load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))

;; add the subdirs of site-list to load-path
(add-subdirs-to-load-path (expand-file-name "site-lisp" user-emacs-directory))

;; https://github.com/emacs-helm/helm
(require 'helm-match-plugin)
(require 'helm-config)       
(helm-mode 1)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; http://www.emacswiki.org/emacs/MultiTerm
(require 'multi-term)
(setq multi-term-program "/bin/zsh")

;; http://blog.binchen.org/?p=375
;; https://github.com/nschum/window-numbering.el
(require 'window-numbering)
(window-numbering-mode 1)
(winner-mode 1)

