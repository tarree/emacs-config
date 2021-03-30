;; GENERAL
(require 'base-config)
(require 'base-theme)
(require 'base-functions)
(require 'base-keybinds)

(require 'base-vendor)

(require 'init-flycheck)
(require 'init-ivy)
(require 'init-counsel)
(require 'init-company)
(require 'init-projectile)
(require 'init-lsp)
(require 'init-yas)



;; LANGUAGE SPECIFIC
(require 'lang-git)

(require 'lang-plantuml)
(require 'lang-python)
(require 'lang-java)
(require 'lang-web)
(require 'lang-csharp)
(require 'lang-elixir)
(require 'lang-ruby)
(require 'lang-rust)
(require 'lang-org)

(provide 'base)
