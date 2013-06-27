(global-hl-line-mode)
(set-background-color "black")
(set-foreground-color "white")
(modify-frame-parameters nil '((alpha . 90)))
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(set-face-background 'mode-line "goldenrod")
(display-time)
(column-number-mode)
(linum-mode)

;; Self Quick Shortcuts
(global-set-key (kbd "C-x C-,") 
  	(lambda () 
		  "Edit .emacs customized setting file"
		  (interactive) 
		  (find-file "~/.emacs")))
