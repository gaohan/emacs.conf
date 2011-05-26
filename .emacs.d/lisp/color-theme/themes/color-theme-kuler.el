(eval-when-compile
  (require 'color-theme))

(defun color-theme-kuler ()
  "Color Theme by Gao Han."
  (interactive)
  (color-theme-install
   '(color-theme-kuler
     ((foreground-color . "#d1d1bc")
      (background-color . "#010712")
      (cursor-color . "#961227"))
     (font-lock-builtin-face ((t (:foreground "#632a56"))))
     (font-lock-comment-delimiter-face ((t (:foreground "#474338"))))
     (font-lock-comment-face ((t (:foreground "#474338"))))
     (font-lock-constant-face ((t (:foreground "#7d1b17"))))
     (font-lock-doc-face ((t (:foreground "#60695c"))))
     (font-lock-doc-string-face ((t (:foreground "#60695c"))))
     (font-lock-function-name-face ((t (:underline t :foreground "#ffffff"))))
     (font-lock-keyword-face ((t (:foreground "#204d4f"))))
     (font-lock-negation-char-face ((t (:foreground "#7a1700"))))
     (font-lock-preprocessor-face ((t (:foreground "#474338"))))
     (font-lock-regexp-grouping-backslash ((t (:bold t :weight bold))))
     (font-lock-regexp-grouping-construct ((t (:bold t :weight bold))))
     (font-lock-string-face ((t (:foreground "#5b6b2b"))))
     (font-lock-type-face ((t (:foreground "#663f1b"))))
     (font-lock-variable-name-face ((t (:foreground "#968a10"))))
     (font-lock-warning-face ((t (:foreground "#961227" :background "#d1d1bc"))))
     (region ((t (:background "#1a2423"))))
     (secondary-selection ((t (:background "#1c1f26"))))
     (fringe ((t (:background "#010712" :foreground "#474338"))))
     (vertical-border ((t (:foreground "#474338"))))
     (highlight ((t (:background "#360800"))))
     (isearch ((t (:background "#d16500" :foreground "#000000"))))
     (lazy-highlight ((t (:underline t :foreground "#d16500"))))
     (isearch-fail ((t (:inherit font-lock-warning-face))))
     (ido-first-match ((t (:underline t :foreground "#968a10"))))
     (ido-only-match ((t (:underline t :foreground "#5b6b2b"))))
     (ido-subdir ((t (:foreground "#204d4f"))))
     (minibuffer-prompt ((t (:foreground "#663f1b"))))
     (mode-line ((t (:background "#380019"))))
     (mode-line-buffer-id ((t (:foreground "#ffffff"))))
     (mode-line-highlight ((t (:box (:line-width -1)))))
     (mode-line-inactive ((t (:background "#262311"))))
     (show-paren-match ((t (:background "#ffffff" :foreground "#000000"))))
     (show-paren-mismatch ((t (:background "#961227" :foreground "#000000"))))
     (tooltip ((t (:background "#380019" :foreground "#d1d1bc"))))
     (linum ((t (:background "#010712" :foreground "#474338"))))
     )))











