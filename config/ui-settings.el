;; Make frame transparent
;;(set-frame-parameter (selected-frame) 'alpha '(95 90))
;;(add-to-list 'default-frame-alist '(alpha 95 90))

(load-theme 'flatui t)

;; Disable bold by default
(mapc
 (lambda (face)
   (set-face-attribute face nil :weight 'normal))
 (face-list))

(global-font-lock-mode t)

;; (if (string= (symbol-name system-type) "windows-nt")
;;     (setq default-frame-alist '((font . "Consolas-11")))
;;   (modify-frame-parameters nil '((wait-for-wm . nil))))

;; (if (string= (symbol-name system-type) "darwin")
;;     (setq default-frame-alist '((font . "Inconsolata-16")))
;;   (modify-frame-parameters nil '((wait-for-wm . nil))))

;; Set font
(set-default-font "Source Code Pro" nil t)
(set-face-attribute 'default nil :height 155)

;; Flat modeline
(set-face-attribute 'mode-line nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)

(eval-after-load 'diff-mode
  '(progn
     (set-face-foreground 'diff-added "green4")
     (set-face-foreground 'diff-removed "red3")))

(setq truncate-partial-width-windows nil)

(scroll-bar-mode -1)

;; Company mode
(require 'color)

(let ((bg (face-attribute 'default :background)))
  (custom-set-faces
   `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 10)))))
   `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 15)))))
   `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 10)))))
   `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
   `(company-tooltip-common ((t (:inherit font-lock-constant-face))))))

(provide 'ui-settings)
