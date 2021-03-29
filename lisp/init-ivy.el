(use-package ivy
  :ensure t
  :bind
  ("C-x s" . swiper)
  ("C-x C-r" . ivy-resume)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
        ivy-count-format "%d/%d ")
  (define-key read-expression-map (kbd "C-r") 'counsel-expression-history))

(use-package ivy-posframe
  :ensure t
  :config
  (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-center)))
  (setq ivy-posframe-min-width 90
        ivy-posframe-width 110)
  (setq ivy-posframe-border-width 2)
  (setq ivy-posframe-parameters
      '((left-fringe . 8)
        (right-fringe . 8))))
(ivy-posframe-mode 1)

(provide 'init-ivy)
