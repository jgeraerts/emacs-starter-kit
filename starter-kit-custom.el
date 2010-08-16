;; install packages
(elpa-install (list 'yasnippet-bundle
                    'rinari
                     ))

;; load in yassnippet
(require 'yasnippet-bundle)

(eval-after-load 'ruby-mode
  '(progn
     (require 'ruby-electric)
     (require 'ri-ruby)
     (setq ri-ruby-script (concat dotfiles-dir "ri-emacs.rb" ))
     (define-key ruby-mode-map (kbd "S-SPC") 'ri-ruby-complete-symbol)
     (ruby-electric-mode t)
     ))

(autoload 'twit-show-recent-tweets	"twit" "" t) ; most recent direct tweets (!)
(autoload 'twit-show-at-tweets		"twit" "" t) ; directed to you
(autoload 'twit-show-friends 		"twit" "" t) ; your friends
(autoload 'twit-show-followers 		"twit" "" t) ; your followers

(autoload 'twit-follow-recent-tweets	"twit" "" t) ; at idle, check at background

(autoload 'twit-post			"twit" "" t)
(autoload 'twit-post-region		"twit" "" t)
(autoload 'twit-post-buffer		"twit" "" t)
(autoload 'twit-direct			"twit" "" t) ; tweet to person

(autoload 'twit-add-favorite		"twit" "" t) ; Add to favourite: (*) star
(autoload 'twit-remove-favorite 	"twit" "" t)

(autoload 'twit-add-friend  		"twit" "" t) ; follow a friend
(autoload 'twit-remove-friend 		"twit" "" t) ; emove a frienda 

(global-set-key (kbd "S-SPC") 'complete-symbol)

;; orgmode
(setq load-path (cons "~\\.emacs.d\\vendor\\org-7.01g\\lisp" load-path))
(require 'org-install)

(provide 'starter-kit-custom)

