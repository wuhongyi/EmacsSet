(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;�ر�emacs����ʱ�Ļ���
(setq inhibit-startup-message t)



;;��ʾƥ�������
(show-paren-mode t) 
;;�����ʾΪһ����
(setq-default cursor-type 'bar)
;;���ָ��ܹ��
(mouse-avoidance-mode 'animate)
;;�����﷨������
(global-font-lock-mode 1)
;;������ʾ����ѡ��
(transient-mark-mode t)
;;��������ʱ�ļ�
(setq-default make-backup-files nil)
;;��ʾ���к�
(setq column-number-mode t) 
(setq line-number-mode t)
;;����emacs���ⲿ���������ճ��
(setq x-select-enable-clipboard t)
;;ʹ������м�����ճ��
(setq mouse-yank-at-point t)
;; �Զ������ļ�ĩ����һ����
(setq require-final-newline t)
;; ���������β�����ƶ���ʱ��ʼ�ձ�������β��

;;���ø�����Ϣ
(setq user-full-name "Hongyi Wu,�����")
(setq user-mail-address "wuhongyi@qq.com")


;;�����۵�
(load-library "hideshow")
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'c-mode-hook 'hs-minor-mode)


;;color c:/Users/Administrator/AppData/Roaming/
(add-to-list 'load-path "c:/Users/Administrator/AppData/Roaming/.emacs.d/plugins")
(require 'color-theme)
 (color-theme-initialize)
;;(color-theme-subtle-hacker)
;;(color-theme-xemacs)
;;(color-theme-wheat)
;;(color-theme-calm-forest)
;;(color-theme-matrix)
;;(color-theme-robin-hood)
(color-theme-euphoria);;��ɫ�ܺ�
;;(color-theme-arjen)
;;(color-theme-jsc-dark)

;; (if (>= emacs-major-version 24)  ;; ����˵������� Emacs 24, ��ִ�к���һ�� 
;;      (load-theme 'manoj-dark t)  ;; Emacs 24 ��ʹ����Ƕ�� load-theme ���Ƽ��ط�� 
;;    (when (require 'color-theme nil 'noerror)  ;; �����˵�����ż��� color-theme ���������������� 
;;      (color-theme-initialize)  ;; ��ʼ�� color-theme �� 
;;      (color-theme-euphoria)     ;; ѡ�� color-theme ���е� clarity ��� 
;;     )) 


;;(display time)======
(setq display-time-24hr-format t);;24 hour time format
(display-time-mode 1);;Display current time on minibuffer
(setq display-time-day-and-data t);;Display data and day

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - Hongyi Wu @ Harbin Engineering University"))

;; ;; default to unified diffs
;; (setq diff-switches "-u")

;; ;; always end a file with a newline
;; ;(setq require-final-newline 'query)




;;�Զ���ȫ
(add-to-list 'load-path "c:/Users/Administrator/AppData/Roaming/.emacs.d/plugins")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "c:/Users/Administrator/AppData/Roaming/.emacs.d/plugins/ac-dict")
(ac-config-default)




;;��ʾ����
(add-to-list 'load-path "c:/Users/Administrator/AppData/Roaming/.emacs.d/plugins")
(require 'linum)    
;;; show line numbers in buffer  
;;; run M-x linum-mode    
;;; show line numbers in all buffers  
;;; run M-x global-linum-mode    
(global-linum-mode t) 


;;ģ�����
(add-to-list 'load-path "c:/Users/Administrator/AppData/Roaming/.emacs.d/plugins") 
(require 'yasnippet-bundle) 
(setq yas/root-directory "c:/Users/Administrator/AppData/Roaming/.emacs.d/snippets")
(yas/load-directory yas/root-directory)


 
(add-to-list 'load-path "c:/Users/Administrator/AppData/Roaming/.emacs.d/plugins")
;;����header2.el�ļ�,�Զ�����ļ�ͷ
(require 'header2)
(autoload 'auto-update-file-header "header2")
(add-hook 'write-file-hooks 'auto-update-file-header)
(autoload 'auto-make-header "header2")
(add-hook 'emacs-lisp-mode-hook 'auto-make-header)
(add-hook 'c-mode-common-hook   'auto-make-header) 
(add-hook 'c++-mode-common-hook   'auto-make-header)
(add-hook 'text-mode-hook   'auto-make-header)
