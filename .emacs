;;--------------------
;普通设置
(set-default-font "Telegrama-10");默认字体
(setq make-backup-files nil);禁止备份
(setq inhibit-startup-message t);关闭启动信息
(setq initial-scratch-message "");scratch为空
(fset 'yes-or-no-p 'y-or-n-p);以 y/n代表 yes/no
(column-number-mode t);显示列号
(size-indication-mode t);显示文件大小
(global-linum-mode t);显示行号
(show-paren-mode t);显示括号匹配
(setq show-paren-style 'parenthesis)
(tool-bar-mode nil);去掉工具栏
(scroll-bar-mode nil);去掉滚动条
(setq frame-title-format "%b@%f");在标题栏显示文件名称
(setq default-fill-column 80);默认显示 80列就换行
(setq ring-bell-function 'ignore);禁止警告音
(ido-mode t);配置ido
(icomplete-mode t)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(put 'scroll-left 'disabled nil);允许屏幕左移
(global-set-key (kbd "C-x C-j") 'align);变量自动对齐
(winner-mode 1);窗口undo
(add-hook 'c-mode-hook 'hs-minor-mode);Hide/Show
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'sh-mode-hook 'hs-minor-mode)
(setq gdb-many-windows t);gdb多窗口
(desktop-save-mode t);会话保存
(recentf-mode t);允许打开最近文件
(setq-default major-mode 'org-mode);默认模式
(setq mouse-yank-at-point t);光标处粘贴
(blink-cursor-mode nil);禁止光标闪烁
(setq x-stretch-cursor t);光标在TAB字符上显示为大方块
(setq void-text-area-pointer nil);禁止显示箭头指针
(mouse-avoidance-mode 'banish);鼠标自动闪开
(require 'xcscope);cscope独立软件
;;--------------------\


;;--------------------
;扩展
;NETBSD KNF Style
(load-file "~/.emacs.d/lisp/misc/NETBSD.el")
;Auto Pair
(add-to-list 'load-path "~/.emacs.d/lisp/misc")
(require 'autopair)
(autopair-global-mode)
;Color-Theme
(add-to-list 'load-path "~/.emacs.d/lisp/color-theme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-kuler)
;CEDET
(add-to-list 'load-path "~/.emacs.d/lisp/cedet/common")
(require 'cedet)
(require 'semantic-ia)
(global-ede-mode 1)
(global-srecode-minor-mode 1)
;(semantic-load-enable-minimum-features)
(semantic-load-enable-code-helpers)
;(semantic-load-enable-guady-code-helpers)
;(semantic-load-enable-excessive-code-helpers)
;(semantic-load-enable-semantic-debugging-helpers)
;; (setq semanticdb-project-roots (list (expand-file-name "/")))
(defconst cedet-user-include-dirs
  (list ".." "../include" "../inc" "../common" "../public"
        "../.." "../../include" "../../inc" "../../common" "../../public"))
(defconst cedet-win32-include-dirs
  (list "C:/MinGW/include"
        "C:/MinGW/include/c++/3.4.5"
        "C:/MinGW/include/c++/3.4.5/mingw32"
        "C:/MinGW/include/c++/3.4.5/backward"
        "C:/MinGW/lib/gcc/mingw32/3.4.5/include"
        "C:/Program Files/Microsoft Visual Studio/VC98/MFC/Include"))
(require 'semantic-c nil 'noerror)
(let ((include-dirs cedet-user-include-dirs))
  (when (eq system-type 'windows-nt)
    (setq include-dirs (append include-dirs cedet-win32-include-dirs)))
  (mapc (lambda (dir)
          (semantic-add-system-include dir 'c++-mode)
          (semantic-add-system-include dir 'c-mode))
        include-dirs))
(global-set-key [f12] 'semantic-ia-fast-jump);跳转到函数定义
(global-semantic-tag-folding-mode 1);代码折叠
(global-set-key (kbd "C-c \\") 'global-semantic-tag-folding-mode)
(global-set-key (kbd "C-c , \[") 'semantic-tag-folding-fold-block)
(global-set-key (kbd "C-c , \]") 'semantic-tag-folding-show-block)
(global-set-key (kbd "C-c \[") 'semantic-tag-folding-fold-all)
(global-set-key (kbd "C-c \]") 'semantic-tag-folding-show-all)
;ECB
(add-to-list 'load-path "~/.emacs.d/lisp/ecb")
(require 'ecb-autoloads)
(setq ecb-tip-of-the-day nil)
(setq ecb-tree-buffer-style 'ascii-guides)
(custom-set-variables '(ecb-options-version "2.40"))
;Auto Complete
(add-to-list 'load-path "~/.emacs.d/lisp/auto-complete")
(require 'auto-complete-config)
(require 'auto-complete-clang)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp/auto-complete/ac-dict")
(ac-config-default)
(global-set-key (kbd "M-/") 'auto-complete)
;Yasnippet
(add-to-list 'load-path "~/.emacs.d/lisp/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/lisp/yasnippet/snippets")
(setq yas/prompt-functions '(yas/dropdown-prompt))
;;--------------------\
