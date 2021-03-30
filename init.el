;;; .emacs --- dot emacs file

;; -------------------------------------------------------- [ general settings ]
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'base)

;; --------------------------------------------------------- [ package manager ]
;;(load "general-packages.el")

;; ----------------------------------------------------- [ company & lsp modes ]







;; in case you are using client which is available as part of lsp refer to the
;; table bellow for the clients that are distributed as part of lsp-mode.el
;; (require 'lsp-clients)
;; (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
;; (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)





;; --------------------------------------------------------------- [ debugging ]
(dap-mode 1)
(dap-ui-mode 1)



;; ------------------------------------------------------------------ [ c/c++ ]
;; clangd



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
