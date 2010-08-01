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


(global-set-key (kbd "S-SPC") 'complete-symbol)

(provide 'starter-kit-custom)
