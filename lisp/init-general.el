(add-to-list 'auto-mode-alist '("\\.msbuild\\'" . xml-mode))

(use-package ace-jump-mode
  :ensure t
  :bind ("C-." . ace-jump-mode))

;; enable smartparens in programming buffers
(use-package smartparens
  :ensure t
  :init (add-hook 'prog-mode-hook 'smartparens-mode)
  :bind
  ("M-<right>" . sp-forward-sexp)
  ("M-<left>" . sp-backward-sexp))

;; enable rainbow delimiters in all prgramming modes
(use-package rainbow-delimiters
  :ensure t
  :init
  (progn
    (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)))

;; enable bookmarks
(use-package bm
  :ensure t)

;; enable golden ratio
(use-package golden-ratio
  :ensure t
  :config
  (golden-ratio-mode 1))

;; enable color-moocur
(use-package color-moccur
  :ensure t
  :commands (isearch-moccur isearch-all)
  :bind (("M-s O" . moccur)
         :map isearch-mode-map
         ("M-o" . isearch-moccur)
         ("M-O" . isearch-moccur-all))
  :init
  (setq isearch-lazy-highlight t)
  :config
  (use-package moccur-edit))

;; enable code folding
(use-package origami
  :ensure t)

(provide 'init-general)
