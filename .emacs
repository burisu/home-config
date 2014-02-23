(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(font-use-system-font t)
 '(inhibit-startup-screen t)
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 96 :width normal)))))

(add-to-list 'load-path "~/.emacs.d")
(load "treetop.el")
(load "coffee-mode.el")


;; I hate tabs!
(setq-default indent-tabs-mode nil)

(add-to-list 'load-path "~/.emacs.d/elisp/feature-mode")
(add-to-list 'load-path "~/.emacs.d/elisp/nsis-mode")
 (autoload 'nsis-mode "nsis-mode" "NSIS mode" t)

 (setq auto-mode-alist (append '(("\\.\\([Nn][Ss][Ii]\\)$" .
                                  nsis-mode)) auto-mode-alist))

 (setq auto-mode-alist (append '(("\\.\\([Nn][Ss][Hh]\\)$" .
                                  nsis-mode)) auto-mode-alist))
;; and load it
;; (add-to-list 'feature-mode '("\.feature$" . 'feature-mode))
;; (autoload 'feature-mode "feature-mode" "Mode for editing cucumber files" t)


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))


(add-to-list 'load-path "~/.emacs.d/Enhanced-Ruby-Mode") ; must be added after any path containing old ruby-mode
(setq enh-ruby-program "~/.rbenv/shims/ruby") ; so that still works if ruby points to ruby1.8
(require 'ruby-mode)


(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile.lock$" . yaml-mode))
(add-to-list 'auto-mode-alist '("Procfile$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))
