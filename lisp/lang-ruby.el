;; ---------------------------------------------------------------------- [ Ruby ]
(add-hook 'ruby-mode-hook 'robe-mode)
(eval-after-load 'company
  '(push 'company-robe company-backends))
(add-hook 'robe-mode-hook 'ac-robe-setup)
(use-package rinari
  :ensure t)

(provide 'lang-ruby)
