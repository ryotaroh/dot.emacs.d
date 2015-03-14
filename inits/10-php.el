(require 'php-mode)
(add-to-list 'auto-mode-alist '("\\.ctp\\'" . php-mode))

(defun php-indent-hook ()
  (c-set-offset 'arglist-intro '+)      ; 配列の最初の要素が改行した場合
  (c-set-offset 'arglist-close 0)       ; 配列の閉じ括弧
  (c-set-offset 'case-label '+)         ; switch文のcaseラベル
  (setq tab-width 4)
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 4))

(add-hook 'php-mode-hook 'php-indent-hook)
