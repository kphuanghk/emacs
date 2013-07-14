
;; Bulit in mode turn on/off
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


;;Self playful stuff
(defun mark-comments ()
  "Insert standard comment for ruby!"
  (interactive)
  (progn 
    (insert "#==================================================")
    (insert "# Ver   Date    Hist                               ")
    (insert "#===================================================")))

(global-set-key (kbd "C-c C-g") 'mark-comments)

;; For loading inf-ruby extension
;; curl -O https://raw.github.com/nonsequitur/inf-ruby/master/inf-ruby.el
(load-file "~/.emacs.d/inf-ruby.el")

(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(autoload 'inf-ruby-setup-keybindings "inf-ruby" "" t)
(eval-after-load 'ruby-mode
  '(add-hook 'ruby-mode-hook 'inf-ruby-setup-keybindings))

;; For loading yaml-mode.el
;; curl -O https://raw.github.com/yoshiki/yaml-mode/master/yaml-mode.el
(load-file "~/.emacs.d/yaml-mode.el")
(require 'yaml-mode)

;; Customize auto list session
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
