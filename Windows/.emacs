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

;;关闭emacs启动时的画面
(setq inhibit-startup-message t)



;;显示匹配的括号
(show-paren-mode t) 
;;光标显示为一竖线
(setq-default cursor-type 'bar)
;;鼠标指针避光标
(mouse-avoidance-mode 'animate)
;;开启语法高亮。
(global-font-lock-mode 1)
;;高亮显示区域选择
(transient-mark-mode t)
;;不生成临时文件
(setq-default make-backup-files nil)
;;显示行列号
(setq column-number-mode t) 
(setq line-number-mode t)
;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)
;;使用鼠标中键可以粘贴
(setq mouse-yank-at-point t)
;; 自动的在文件末增加一新行
(setq require-final-newline t)
;; 当光标在行尾上下移动的时候，始终保持在行尾。

;;设置个人信息
(setq user-full-name "Hongyi Wu,吴鸿毅")
(setq user-mail-address "wuhongyi@qq.com")


;;代码折叠
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
(color-theme-euphoria);;颜色很好
;;(color-theme-arjen)
;;(color-theme-jsc-dark)

;; (if (>= emacs-major-version 24)  ;; 这是说，如果是 Emacs 24, 则执行后面一句 
;;      (load-theme 'manoj-dark t)  ;; Emacs 24 下使用内嵌的 load-theme 机制加载风格 
;;    (when (require 'color-theme nil 'noerror)  ;; 这句是说，试着加载 color-theme 包，如果出错就算了 
;;      (color-theme-initialize)  ;; 初始化 color-theme 包 
;;      (color-theme-euphoria)     ;; 选择 color-theme 包中的 clarity 风格 
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




;;自动补全
(add-to-list 'load-path "c:/Users/Administrator/AppData/Roaming/.emacs.d/plugins")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "c:/Users/Administrator/AppData/Roaming/.emacs.d/plugins/ac-dict")
(ac-config-default)




;;显示行数
(add-to-list 'load-path "c:/Users/Administrator/AppData/Roaming/.emacs.d/plugins")
(require 'linum)    
;;; show line numbers in buffer  
;;; run M-x linum-mode    
;;; show line numbers in all buffers  
;;; run M-x global-linum-mode    
(global-linum-mode t) 


;;模板调用
(add-to-list 'load-path "c:/Users/Administrator/AppData/Roaming/.emacs.d/plugins") 
(require 'yasnippet-bundle) 
(setq yas/root-directory "c:/Users/Administrator/AppData/Roaming/.emacs.d/snippets")
(yas/load-directory yas/root-directory)


 
(add-to-list 'load-path "c:/Users/Administrator/AppData/Roaming/.emacs.d/plugins")
;;加载header2.el文件,自动添加文件头
(require 'header2)
(autoload 'auto-update-file-header "header2")
(add-hook 'write-file-hooks 'auto-update-file-header)
(autoload 'auto-make-header "header2")
(add-hook 'emacs-lisp-mode-hook 'auto-make-header)
(add-hook 'c-mode-common-hook   'auto-make-header) 
(add-hook 'c++-mode-common-hook   'auto-make-header)
(add-hook 'text-mode-hook   'auto-make-header)
