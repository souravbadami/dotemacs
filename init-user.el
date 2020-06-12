(load-theme 'solarized-gruvbox-dark t)

;; Disable cider banner
(setq cider-repl-display-help-banner nil)

;; Disable splash screen
(setq inhibit-splash-screen t)

;; Backup files policy
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
      )

;; Looks ;)
;; (set-default-font "Fira Code 16")
(global-hl-line-mode +1)

;; Org-mode
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(setq org-log-done 'time)
(setq org-log-done 'note)

;; org bullets
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; Haskell mode
;;(require 'lsp)
;;(require 'lsp-haskell)
;;(add-hook 'haskell-mode-hook #'lsp)
;;(setq lsp-haskell-process-path-hie "hie-wrapper")

;; Golden ratio mode
(use-package golden-ratio
  :diminish golden-ratio-mode
  :init
  (golden-ratio-mode 1))
