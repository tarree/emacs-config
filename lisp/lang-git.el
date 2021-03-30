(use-package vdiff
  :ensure t)

(use-package vdiff-magit
  :ensure t)

(use-package magit
  :ensure t
  :bind (:map magit-mode-map
              ("e" . 'vdiff-magit-dwim)
              ("E" . 'vdiff-magit-popup))
  :config
  (setq magit-completing-read-function 'ivy-completing-read))

(use-package forge
  :ensure t
  :after magit)
(with-eval-after-load 'forge
  (push '("github.schneider-electric.com" "github.schneider-electric.com/api/v3" "github.schneider-electric.com" forge-github-repository) forge-alist))

(provide 'lang-git)
