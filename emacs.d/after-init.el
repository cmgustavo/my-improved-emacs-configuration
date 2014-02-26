;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Backup NONE

(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq auto-save-default         nil) ; Don't want any auto saving

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generalidades

;; Algunas combinaciones de teclas
(global-set-key (kbd "C-c g") 'goto-line)
;; Indentar
(global-set-key (kbd "C-c i") 'indent-region)
;; Helm-mini
(global-set-key (kbd "C-c h") 'helm-mini)

;; Acepta 'y' o 'n' cuando pide 'yes' o 'no'
(fset 'yes-or-no-p 'y-or-n-p)
;; Resalta la linea que esta el cursor
(global-hl-line-mode 1)
;; Deshabilita los tab para indent
(setq-default indent-tabs-mode nil)
;; Indenta por default en 2 tabs/espacios 
(setq standard-indent 2)
;; No mostrar toolbar
(tool-bar-mode -1)
;; Start home folder
(setq default-directory "~/")
(setq command-line-default-directory "~/")

;(setq auto-indent-on-visit-file t) ;; If you want auto-indent on for files
;(require 'auto-indent-mode)
;(auto-indent-global-mode)

; color theme
(load-theme 'solarized-dark t)

; helm
(helm-mode 1)

; auto-complete
(require 'auto-complete-config)
(ac-config-default)

; ac-helm
;(ac-complete-with-helm)

; pair mode
(show-paren-mode)
(electric-pair-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Custom files
;; Los archivos .bb son templates de SQL
(setq auto-mode-alist (cons '("bb$" . sql-mode) auto-mode-alist))
(autoload 'tt-mode "tt-mode")
(setq auto-mode-alist
      (append '(("\\.tt$" . tt-mode))  auto-mode-alist ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Template Jade
(require 'sws-mode)
(require 'jade-mode)    
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Match HTML tags
(add-hook 'html-mode-hook
          (lambda ()
            (define-key html-mode-map (kbd "<M-left>") 'sgml-skip-tag-backward)
            (define-key html-mode-map (kbd "<M-right>") 'sgml-skip-tag-forward)
            )
          )

;(require 'powerline)
;(powerline-default-theme)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; revert

(global-auto-revert-mode 1)
(setq auto-revert-verbose nil)

(global-set-key (kbd "<f5>") 'revert-buffer)
