;; ---------------------------------------------------------------- [ plantuml ]
;; M-x plantuml-download-jar<RET>
;; sudo pacman -S graphviz
(use-package plantuml-mode
  :ensure t
  :commands plantuml-mode
  :mode ("\\.puml\\'" "\\.plantuml\\'")
    :init
  (setq plantuml-default-exec-mode 'jar)
  (setq plantuml-jar-path "/home/sam/plantuml.jar")
  (setq plantuml-java-args (list "-Djava.awt.headless=true" "-Dhttp.proxyHost=http://gateway.schneider.zscaler.net" "-Dhttp.proxyPort=9480" "-Dhttps.proxyHost=http://gateway.schneider.zscaler.net" "-Dhttps.proxyPort=9480" "-jar" "--illegal-access=deny")))

(use-package flycheck-plantuml
  :ensure t
  :after (flycheck)
  :config
  (flycheck-plantuml-setup))

(provide 'lang-plantuml)
