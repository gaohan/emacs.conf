
;普通设置
(setq inhibit-startup-message t);关闭启动信息
(setq make-backup-files nil);不产生备份文件
(fset 'yes-or-no-p 'y-or-n-p);以 y/n代表 yes/no
(column-number-mode t);显示列号
(size-indication-mode t);显示文件大小
(global-linum-mode t);显示行号
(show-paren-mode t);显示括号匹配
(setq show-paren-style 'parenthesis)
(tool-bar-mode nil);去掉工具栏
(scroll-bar-mode nil);去掉滚动条
(mouse-avoidance-mode 'animate);光标靠近鼠标指针时，让鼠标指针自动让开
(setq frame-title-format "%b@%f");在标题栏显示文件名称
(setq default-fill-column 80);默认显示 80列就换行
(blink-cursor-mode nil);禁止光标闪烁
(ido-mode t);配置ido
(global-set-key (kbd "C-x C-b") 'ibuffer)