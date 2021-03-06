
;; init-packages
(setq default-directory "d:/linux")
 (when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
		      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
 (require 'cl)
 (defvar my/packages '(
		;; --- Auto-completion ---
		company
		;; --- Better Editor ---
		hungry-delete
		swiper
		counsel
		smartparens
		evil
		evil-leader
		evil-surround
		evil-nerd-commenter
		evil-escape
		which-key
		window-numbering
		auctex
		cdlatex 
		;; --- Major Mode ---
		js2-mode
		elpy
		flycheck
		py-autopep8
		;; --- Minor Mode ---
		nodejs-repl
		magit 
		exec-path-from-shell
		;; --- Themes ---
        	;;zenburn-theme
		spacemacs-theme
		;; monokai-theme
		;;solarized-themek
		) "Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

 ;; Find Executable Path on OS X
 (when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))

(elpy-enable)
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
;; Enable autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;;(require 'yasnippet)
;;(yas-global-mode 1)
(setq elpy-rpc-virtualenv-path 'current)
(require 'hungry-delete)
(global-hungry-delete-mode)
(smartparens-global-mode t)

(evil-escape-mode 1)
(evil-mode 1)
(which-key-mode 1)

(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(global-evil-leader-mode)
(evil-leader/set-key
  "ff" 'find-file
  "fr" 'recentf-open-files
  "bb" 'switch-to-buffer
  "bk" 'kill-buffer
  "0"  'select-window-0
  "1"  'select-window-1
  "2"  'select-window-2
  "3"  'select-window-3
  "w/" 'split-window-right
  "w-" 'split-window-below
  ":"  'counsel-M-x
  "wM" 'delete-other-windows
  )

(window-numbering-mode 1)
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 20)
(require 'evil-surround)
(global-evil-surround-mode 1)


(require 'org-download)
(add-hook 'dired-mode-hook 'org-download-enable)
;; (use-package org-download
;; 	     :ensure t
;; 	     ;;将截屏功能绑定到快捷键：Ctrl + Shift + Y
;; 	     :bind ("C-S-y" . org-download-screenshot)
;; 	     :config
;; 	     (require 'org-download)
;; 	     ;; Drag and drop to Dired
;; 	     (add-hook 'dired-mode-hook 'org-download-enable)
;; 	     )

(require 'dired-x)
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)
(evilnc-default-hotkeys)
(define-key evil-normal-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
(define-key evil-visual-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
;;(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
;;(global-set-key (kbd "<f1> f") 'counsel-describe-function)
;;(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;;(global-set-key (kbd "<f1> l") 'counsel-find-library)
;;(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;;(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;;(global-set-key (kbd "C-c g") 'counsel-git)
;;(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;; init-better-defaults;;;;;;;;
(tool-bar-mode -1)
(scroll-bar-mode -1)
;;(load-theme 'spacemacs-theme t)
'(custom-enabled-themes (quote (spacemacs-dark)))
(setq-default cursor-type 'bar)
(setq inhibit-splash-screen 1)
(setq make-backup-files nil)
(setq org-agenda-files '("~/geek/org/"))
(set-face-attribute 'default nil :height 160)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "d:/linux/emacs/.emacs "))
(global-set-key (kbd "<f2>") 'open-init-file)


(global-company-mode 1)
(global-hl-line-mode 1)
(global-linum-mode 1)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-w") 'backward-kill-word)

(setq org-export-backends (quote (ascii html icalendar latex md)))

(setq ring-bell-function 'ignore)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'TeX-fold-mode 1)
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex) 

(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(add-hook 'org-mode-hook
	  (lambda() (setq truncate-lines nil)))



(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command-style
   (quote
    (("" "(\"\" \"xelatex\" \"%`xelatex%(mode)% %t\" TeX-run-TeX nil t)")
     ("" "%(PDF)%(latex) %(file-line-error) %(extraopts) %S%(PDFout)"))))
 '(TeX-command-list
   (quote
    (("xelatex" "%`xelatex%(mode)% %t" TeX-run-TeX nil t)
     ("TeX" "%(PDF)%(tex) %(file-line-error) %`%(extraopts) %S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
      (plain-tex-mode texinfo-mode ams-tex-mode)
      :help "Run plain TeX")
     ("LaTeX" "%`%l%(mode)%' %T" TeX-run-TeX nil
      (latex-mode doctex-mode)
      :help "Run LaTeX")
     ("Makeinfo" "makeinfo %(extraopts) %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with Info output")
     ("Makeinfo HTML" "makeinfo %(extraopts) --html %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with HTML output")
     ("AmSTeX" "amstex %(PDFout) %`%(extraopts) %S%(mode)%' %t" TeX-run-TeX nil
      (ams-tex-mode)
      :help "Run AMSTeX")
     ("ConTeXt" "%(cntxcom) --once --texutil %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt once")
     ("ConTeXt Full" "%(cntxcom) %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt until completion")
     ("BibTeX" "bibtex %s" TeX-run-BibTeX nil
      (plain-tex-mode latex-mode doctex-mode context-mode texinfo-mode ams-tex-mode)
      :help "Run BibTeX")
     ("Biber" "biber %s" TeX-run-Biber nil
      (plain-tex-mode latex-mode doctex-mode texinfo-mode ams-tex-mode)
      :help "Run Biber")
     ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer")
     ("Print" "%p" TeX-run-command t t :help "Print the file")
     ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command)
     ("File" "%(o?)dvips %d -o %f " TeX-run-dvips t
      (plain-tex-mode latex-mode doctex-mode texinfo-mode ams-tex-mode)
      :help "Generate PostScript file")
     ("Dvips" "%(o?)dvips %d -o %f " TeX-run-dvips nil
      (plain-tex-mode latex-mode doctex-mode texinfo-mode ams-tex-mode)
      :help "Convert DVI file to PostScript")
     ("Dvipdfmx" "dvipdfmx %d" TeX-run-dvipdfmx nil
      (plain-tex-mode latex-mode doctex-mode texinfo-mode ams-tex-mode)
      :help "Convert DVI file to PDF with dvipdfmx")
     ("Ps2pdf" "ps2pdf %f" TeX-run-ps2pdf nil
      (plain-tex-mode latex-mode doctex-mode texinfo-mode ams-tex-mode)
      :help "Convert PostScript file to PDF")
     ("Glossaries" "makeglossaries %s" TeX-run-command nil
      (plain-tex-mode latex-mode doctex-mode texinfo-mode ams-tex-mode)
      :help "Run makeglossaries to create glossary
     file")
     ("Index" "makeindex %s" TeX-run-index nil
      (plain-tex-mode latex-mode doctex-mode texinfo-mode ams-tex-mode)
      :help "Run makeindex to create index file")
     ("upMendex" "upmendex %s" TeX-run-index t
      (plain-tex-mode latex-mode doctex-mode texinfo-mode ams-tex-mode)
      :help "Run upmendex to create index file")
     ("Xindy" "texindy %s" TeX-run-command nil
      (plain-tex-mode latex-mode doctex-mode texinfo-mode ams-tex-mode)
      :help "Run xindy to create index file")
     ("Check" "lacheck %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for correctness")
     ("ChkTeX" "chktex -v6 %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for common mistakes")
     ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document")
     ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
     ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files")
     ("Other" "" TeX-run-command t t :help "Run an arbitrary command"))))
 '(cdlatex-auto-help-delay 1)
 '(cdlatex-math-symbol-alist (quote ((112 ("\\pi" "\\propto")) (99 ("\\chi")))))
 '(cdlatex-paired-parens "$[{(<")
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 2)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(evil-escape-delay 0.2)
 '(evil-escape-key-sequence "jk")
 '(evil-leader/leader " SPC")
 '(evil-want-C-u-scroll t)
 '(fci-rule-color "#383838")
 '(markdown-command
   "pandoc -f markdown -t html -s --mathml --highlight-style pygments --standalone --quiet")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (org-download yasnippet-classic-snippets yasnippet spacemacs-theme py-autopep8 flycheck elpy magit cdlatex evil-escape markdown-mode auctex evil-nerd-commenter 2048-game evil-surround powerline window-numbering evil-leader evil company hungry-delete swiper counsel smartparens js2-mode nodejs-repl exec-path-from-shell zenburn-theme)))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(which-key-allow-imprecise-window-fit nil)
 '(which-key-idle-delay 0.5))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))




;; (defvar cw/org-last-fragment nil
;;   "Holds the type and position of last valid fragment we were on. Format: (FRAGMENT_TYPE FRAGMENT_POINT_BEGIN)"
;;   )

;; (setq cw/org-valid-fragment-type
;;       '(latex-fragment
;;         latex-environment
;;         link))

;; (defun cw/org-curr-fragment ()
;;   "Returns the type and position of the current fragment available for preview inside org-mode. Returns nil at non-displayable fragments"
;;   (let* ((fr (org-element-context))
;;          (fr-type (car fr)))
;;     (when (memq fr-type cw/org-valid-fragment-type)
;;       (list fr-type
;;             (org-element-property :begin fr))))
;;   )

;; (defun cw/org-remove-fragment-overlay (fr)
;;   "Remove fragment overlay at fr"
;;   (let ((fr-type (nth 0 fr))
;;         (fr-begin (nth 1 fr)))
;;     (goto-char fr-begin)
;;     (cond ((or (eq 'latex-fragment fr-type)
;;                (eq 'latex-environment fr-type))
;;            (let ((ov (loop for ov in (org--list-latex-overlays)
;;                            if
;;                            (and
;;                             (<= (overlay-start ov) (point))
;;                             (>= (overlay-end ov) (point)))
;;                            return ov)))
;;              (when ov
;;                (delete-overlay ov))))
;;           ((eq 'link fr-type)
;;            nil;; delete image overlay here?
;;            ))
;;     ))

;; (defun cw/org-preview-fragment (fr)
;;   "Preview org fragment at fr"
;;   (let ((fr-type (nth 0 fr))
;;         (fr-begin (nth 1 fr)))
;;     (goto-char fr-begin)
;;     (cond ((or (eq 'latex-fragment fr-type) ;; latex stuffs
;;                (eq 'latex-environment fr-type))
;;            (when (cw/org-curr-fragment) (org-preview-latex-fragment))) ;; only toggle preview when we're in a valid region (for inserting in the front of a fragment)


;;           ((eq 'link fr-type) ;; for images
;;            (let ((fr-end (org-element-property :end (org-element-context))))
;;              (org-display-inline-images nil t fr-begin fr-end))))
;;     ))


;; (defun cw/org-auto-toggle-fragment-display ()
;;   "Automatically toggle a displayable org mode fragment"
;;   (and (eq 'org-mode major-mode)
;;        (let ((curr (cw/org-curr-fragment)))
;;          (cond
;;           ;; were on a fragment and now on a new fragment
;;           ((and
;;             ;; fragment we were on
;;             cw/org-last-fragment
;;             ;; and are on a fragment now
;;             curr
;;             ;; but not on the last one this is a little tricky. as you edit the
;;             ;; fragment, it is not equal to the last one. We use the begin
;;             ;; property which is less likely to change for the comparison.
;;             (not (equal curr cw/org-last-fragment)))

;;            ;; go back to last one and put image back, provided there is still a fragment there
;;            (save-excursion
;;              (cw/org-preview-fragment cw/org-last-fragment)
;;              ;; now remove current image
;;              (cw/org-remove-fragment-overlay curr)
;;              ;; and save new fragment
;;              )
;;            (setq cw/org-last-fragment curr))

;;           ;; were on a fragment and now are not on a fragment
;;           ((and
;;             ;; not on a fragment now
;;             (not curr)
;;             ;; but we were on one
;;             cw/org-last-fragment)
;;            ;; put image back on, provided that there is still a fragment here.
;;            (save-excursion
;;              (cw/org-preview-fragment cw/org-last-fragment))

;;            ;; unset last fragment
;;            (setq cw/org-last-fragment nil))

;;           ;; were not on a fragment, and now are
;;           ((and
;;             ;; we were not one one
;;             (not cw/org-last-fragment)
;;             ;; but now we are
;;             curr)
;;            ;; remove image
;;            (save-excursion
;;              (cw/org-remove-fragment-overlay curr)
;;              )
;;            (setq cw/org-last-fragment curr))

;;           ))))
