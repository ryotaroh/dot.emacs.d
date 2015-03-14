(setq inhibit-startup-screen t)         ; スタートアップメッセージを非表示
(setq initial-scratch-message nil)      ; This buffer is...を消す
(tool-bar-mode 0)                       ; tool-bar を非表示
(scroll-bar-mode 0)                     ; scroll-bar を非表示
(global-linum-mode t)                   ; 行番号を表示
(column-number-mode t)                  ; 列番号を表示
(blink-cursor-mode t)                   ; カーソルを点滅
(display-time)                          ; モードラインに現在時刻を表示
(setq make-backup-files nil)            ; バックアップファイルを作らない
(setq auto-save-default nil)            ; オートセーブファイルを作らない
(setq show-paren-delay 0)               ; 対応する括弧を強調して表示
(show-paren-mode t)                     ; 有効化
(setq truncate-partial-width-windows t) ; 右端で折り返さない
(setq-default truncate-lines t)
(setq default-frame-alist
      (append
       '((width  . 140)                 ; フレームの幅
         (height . 40)                  ; フレームの高さ
        )
 default-frame-alist))

;; フォント(英語)
(set-face-attribute 'default nil
                    :family "Menlo"
                    :height 130)

;; フォント(日本語)
(set-fontset-font nil 'japanese-jisx0208
  (font-spec :family "Hiragino Kaku Gothic ProN"))

;; 半角と全角の比を1:2(Mac用)
(setq face-font-rescale-alist
      '((".*Hiragino_Kaku_Gothic_ProN.*" . 1.2)))

