(windmove-default-keybindings 'shift)

;; Disable toolbar & menubar
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (  fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(show-paren-mode t)
(column-number-mode t)
(global-display-line-numbers-mode t)
(setq ring-bell-function 'ignore
      inhibit-splash-screen t
      initial-scratch-message nil
      visible-bell nil
      mac-right-option-modifier nil
      backup-inhibited t
      auto-save-default nil
      lsp-prefer-flymake nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(set-face-attribute 'default nil
                    :family "Hack"
                    :height 110
                    :weight 'regular
                    :width 'normal)


(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; -------------------------------------------------------- [ setup shell macOS]
(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :ensure t
  :config
  (exec-path-from-shell-initialize))

;; ------------------------------------------------------------ [ ibuffer mode ]
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)
(require 'uniquify)

(provide 'base-config)
