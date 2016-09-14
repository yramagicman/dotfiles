(evil-mode 1)
(add-to-list 'auto-mode-alist '("/\\..*zsh\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".zshrc" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".zpreztorc" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".zprofile" . shell-script-mode))

(defun evil-map-key (key-str fn-quoted)
    "Map key for both insert and normal modes KEY-STR FN-QUOTED."
    (define-key evil-insert-state-map (kbd key-str) fn-quoted)
    (define-key evil-normal-state-map (kbd key-str) fn-quoted)
    (define-key evil-visual-state-map (kbd key-str) fn-quoted))

(evil-map-key "C-S-z" 'evil-exit-emacs-state)
(evil-map-key "C-M-z" 'evil-emacs-state)
(evil-map-key "M-c" 'evil-force-normal-state)
(evil-map-key "M-s" 'save-buffer)
(evil-map-key "C-q" 'kill-emacs)
(evil-map-key "M-q" 'kill-emacs)
(evil-map-key "C-s" 'save-buffer)
(evil-map-key "C-n" 'evil-normal-state)
(evil-map-key "M-n" 'evil-normal-state)
(evil-map-key "C-S-e" 'eval-buffer)
(evil-map-key "C-h" 'evil-window-left)
(evil-map-key "C-j" 'evil-window-down)
(evil-map-key "C-k" 'evil-window-up)
(evil-map-key "C-l" 'evil-window-right)
; Kill the annoyance of typing the wrong key
(global-unset-key (kbd "C-x h"))
(define-key evil-normal-state-map (kbd "Q") 'fill-paragraph)
;(dolist (k '([mouse-1] [down-mouse-1] [drag-mouse-1] [double-mouse-1] [triple-mouse-1]
;             [mouse-2] [down-mouse-2] [drag-mouse-2] [double-mouse-2] [triple-mouse-2]
;             [mouse-3] [down-mouse-3] [drag-mouse-3] [double-mouse-3] [triple-mouse-3]
;             [mouse-4] [down-mouse-4] [drag-mouse-4] [double-mouse-4] [triple-mouse-4]
;             [mouse-5] [down-mouse-5] [drag-mouse-5] [double-mouse-5] [triple-mouse-5]))
;  (global-unset-key k))

(provide 'evil-settings)