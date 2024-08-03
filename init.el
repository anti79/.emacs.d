(setq inhibit-startup-screen t)
(global-set-key [f12] 'menu-bar-open)
(cua-mode)

(setq initial-scratch-message "")
(setq initial-major-mode 'text-mode)

;; packages
(require 'package)

(defmacro append-to-list (target suffix)
  `(setq ,target (append ,target ,suffix)))
(append-to-list package-archives
                '(("melpa" . "http://melpa.org/packages/") ;; Main package archive
                  ("melpa-stable" . "http://stable.melpa.org/packages/") 
                  ("org-elpa" . "https://orgmode.org/elpa/")))

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(deeper-blue))
 '(package-selected-packages '(elpy))
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'set-goal-column 'disabled nil)


;;python
(add-hook 'python-mode-hook
	    (lambda ()
		    (setq-default indent-tabs-mode t)
		    (setq-default py-indent-tabs-mode t)))

(use-package elpy
  :ensure t
  :init
  (elpy-enable))
