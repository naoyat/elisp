;;
;; Skypeのmoodtextに何か書き込む関数 (MacOSX) by naoya_t
;;
(defun to-sjis-mac (text) (encode-coding-string text 'shift_jis-mac))

(defun skype-set-moodtext (moodtext)
  (do-applescript
	  (concat "tell application \"Skype\"
  send command \"SET PROFILE MOOD_TEXT " (to-sjis-mac moodtext) "\" script name \"Emacs\"
end
"))
  moodtext)

(skype-set-moodtext "こん
ばんは")

