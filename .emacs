(require 'cl)
(require 'package)
(require 'iso-transl)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(setq cfg-var:packages '(evil auto-complete relative-line-numbers muttrc-mode))
(defun cfg:install-packages ()
    (let ((pkgs (remove-if #'package-installed-p cfg-var:packages)))
        (when pkgs
            (message "%s" "Emacs refresh packages database...")
            (package-refresh-contents)
            (message "%s" " done.")
            (dolist (p cfg-var:packages)
                (package-install p)))))

(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(cfg:install-packages)
(require 'evil)
(require 'auto-complete)
(require 'key-chord)
(evil-mode 1)
(global-set-key (kbd "C-S-z") 'evil-exit-emacs-state)
(global-set-key (kbd "C-M-z") 'evil-emacs-state)
(global-set-key (kbd "C-c") 'evil-force-normal-state)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-S-e") 'eval-buffer)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-show-menu t)
 '(ac-auto-start t)
 '(ac-show-menu-immediately-on-auto-complete t)
 '(ac-trigger-key "TAB")
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (wombat)))
 '(linum-format (quote dynamic))
 '(menu-bar-mode nil)
 '(mode-require-final-newline nil)
 '(require-final-newline nil)
 '(scroll-bar-mode nil)
 '(show-paren-delay 0.01)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-relative-line-numbers-mode)
(global-auto-complete-mode 1)
(setq evil-motion-state-modes (append evil-emacs-state-modes evil-motion-state-modes))
(setq evil-emacs-state-modes nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'before-save-hook 'evil-normal-state)
(add-hook 'before-save-hook 'delete-blank-lines)

(load "server")
(unless (server-running-p)
  (server-start))