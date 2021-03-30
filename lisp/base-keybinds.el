(use-package find-file-in-repository
  :ensure t)

(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-x f") 'find-file-in-repository)

(global-set-key [(control shift up)]  'move-line-up)
(global-set-key [(control shift down)]  'move-line-down)

(provide 'base-keybinds)
