(use-package yasnippet :ensure t)
(yas-global-mode 1)

(use-package yasnippet-snippets
  :ensure t
  :after (yasnippet))


(use-package elixir-yasnippets
  :ensure t
  :after (yasnippet))

(provide 'init-yas)
