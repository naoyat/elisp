;; http://blog.livedoor.jp/naoya_t/archives/51007697.html
;; .emacsのどこかに
(defun growlnotify-after-save-hook ()
  (shell-command
   (format "growlnotify -m \"Emacs: ファイル %s を保存しました\""
     (buffer-name (current-buffer)))))
(add-hook 'after-save-hook 'growlnotify-after-save-hook)

