(use-package php-mode
 :ensure t
 :mode
 ("\\.php\\'" . php-mode)
 :config
   (with-eval-after-load "lsp-mode"
    (add-to-list 'lsp-enabled-clients 'iph)))

(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(provide 'lang-php)
