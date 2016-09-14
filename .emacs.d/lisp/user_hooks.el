(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'before-save-hook 'evil-normal-state)
; make sure files are unix!
(add-hook 'before-save-hook
          (lambda nil
            (set-buffer-file-coding-system 'undecided-unix)))




(add-hook 'term-hook 'evil-mode)
(add-hook 'emacs-lisp-mode-hook
      (lambda nil
        ;; (add-hook 'after-save-hook 'eval-buffer)
        (eldoc-mode)))

(add-hook 'org-mode-hook 'org-indent-mode)

(add-hook 'after-init-hook #'global-flycheck-mode)

(add-hook 'dired-load-hook
          (lambda ()
            (require 'dired-x)))
(add-hook 'dired-mode-hook
          (lambda ()
            (setq dired-omit-files "\*pyc")
            (setq dired-omit-files-p t)
            (dired-omit-mode)))
(provide 'user_hooks)