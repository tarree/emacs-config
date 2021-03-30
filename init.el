;;; package --- Summary
;;; Commentary:
;;; Code:
;;; .emacs --- dot Emacs file

;; -------------------------------------------------------- [ general settings ]
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'base)

;; --------------------------------------------------------- [ package manager ]
;;(load "general-packages.el")

;; --------------------------------------------------------------- [ debugging ]



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(elpy yasnippet yaml-mode vdiff-magit use-package thrift smex smartparens rust-mode rainbow-delimiters pyvenv projectile origami omnisharp lsp-ui lsp-java htmlize golden-ratio fringe-helper flx find-file-in-repository exec-path-from-shell doom-modeline dockerfile-mode dap-mode counsel company-lsp color-theme-sanityinc-tomorrow color-theme color-moccur browse-kill-ring bm ace-jump-mode yasnippet-snippets web-mode toml-mode ruby-compilation robe rinari plantuml-mode jump inflections inf-ruby flycheck-dialyxir flycheck-credo findr elixir-mode doom-themes cargo)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
;;; init.el ends here
