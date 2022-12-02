(use-package php-mode
 :ensure t
 :mode
 ("\\.php\\'" . php-mode))

(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

(provide 'lang-php)
