;;; general-packages.el --- my standard packages file
;;; Commentary:
;;; Created by Patrik Hartlén

;;; Code:
;;(eval-when-compile (require 'cl-lib))
(require 'cl-lib)
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/")
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(defvar required-packages
  '(
    flycheck
    ;;
    ;; End of lang sections
    ) "A list of packages to ensure are installed at launch.")

(defun packages-installed-p ()
  "Check that all packages are installed."
  (cl-every 'package-installed-p required-packages))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(require 'use-package)

;;; general-packages.el ends here
