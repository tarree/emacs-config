;; ---------------------------------------------------------------------- [ Org ]
(use-package org
  :ensure t)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files (list "~/org/work.org"))
(setq org-todo-keywords '((sequence "TODO(t)" "NEXT(n)" "WORKING(o)" "WAITING(w)" "PENDING(p)" "SOMEDAY(s)" "|" "DONE(d)" "CANCELED(c)")))
(setq org-todo-keyword-faces '(("WORKING" . "red")("WAITING" . "yellow")("SOMEDAY" . "gray")("PENDING" . "orange")("CANCELED" . "black")))

(setq org-capture-templates
      '(("t" "Work Tasks" entry (file+headline "~/org/work.org" "Work Tasks")
         "* TODO %?\n  %i\n  %a")))

(use-package org-super-agenda
  :ensure t
  :config (org-super-agenda-mode)
  )

(setq org-agenda-time-grid
        '((daily today require-timed)
          ()
           "......"
          "----------------------"
          ))

(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-include-deadlines t)
(setq org-agenda-include-diary t)
(setq org-agenda-block-separator nil)
(setq org-agenda-compact-blocks t)
(setq org-agenda-start-with-log-mode t)
(setq org-agenda-log-mode-items '(closed clock state))

(setq org-agenda-prefix-format '((agenda . " %i %-12:c%?-12t% s")
         (timeline . "  % s")
         (todo .
               " %i %-12:c %(concat \"[ \"(org-format-outline-path (org-get-outline-path)) \" ]\") ")
         (tags .
               " %i %-12:c %(concat \"[ \"(org-format-outline-path (org-get-outline-path)) \" ]\") ")
         (search . " %i %-12:c"))
      )

(setq org-agenda-custom-commands
          '(("z" "Super zaen view"
            ((agenda "" ((org-agenda-span 'day)
                       (org-super-agenda-groups
                        '((:name "Today"
                                 :time-grid t
                                 :date today
                                 :todo "TODAY"
                                 :scheduled today
                                 :order 1)
                          (:name "Due Today"
                                 :deadline today
                                 :order 2)
                          (:name "Overdue"
                                 :deadline past
                                 :order 3)
                          (:name "Due Soon"
                                 :deadline future
                                 :order 4)))))
          (alltodo "" ((org-agenda-overriding-header "")
                       (org-super-agenda-groups
                        '((:name "Next to do"
                                 :todo "NEXT"
                                 :order 1)
                          (:name "Important"
                                 :tag "Important"
                                 :priority "A"
                                 :order 6)
                          (:name "Due Today"
                                 :deadline today
                                 :order 2)
                          (:name "Due Soon"
                                 :deadline future
                                 :order 8)
                          (:name "Overdue"
                                 :deadline past
                                 :order 7)
                          (:name "Maintenance"
                                 :tag "Maintenance"
                                 :order 9)
                          (:name "Issues"
                                 :tag "Issue"
                                 :order 12)
                          (:name "Projects"
                                 :tag "Project"
                                 :order 14)
                          (:name "Emacs"
                                 :tag "Emacs"
                                 :order 13)
                          (:name "Research"
                                 :tag "Research"
                                 :order 15)
                          (:name "To read"
                                 :tag "Read"
                                 :order 30)
                          (:name "Waiting"
                                 :todo "WAITING"
                                 :order 20)
                          (:name "trivial"
                                 :priority<= "C"
                                 :tag ("Trivial" "Unimportant")
                                 :todo ("SOMEDAY" )
                                 :order 90)
                          (:discard (:tag ("Chore" "Routine" "Daily")))))))))))

(use-package excorporate
  :ensure t)

(provide 'lang-org)
