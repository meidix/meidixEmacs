;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configs
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(global-fira-code-mode 't)
(setq doom-font (font-spec :family "Fira Code" :size 14))

;; setting the projectile directories to search for projects
(setq projectile-project-search-path '("~/projects" "~/Documents/recruites/"))

(use-package! python-black
  :demand t
  :after python
  :hook (python-mode . python-black-on-save-mode))

;; the python virtualenv package to find the virtualenvironment
(use-package! auto-virtualenv
  :demand t
  :after python
  :hook (python-mode 'auto-virtualenv-set-virtualenv))

;; the jedi package which is a python server and auto complete package
(use-package! jedi
  :demand t
  :after python
  :hook ('python-mode-hook 'jedi:setup))
