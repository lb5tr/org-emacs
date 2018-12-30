;; stuff automatically added
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-use-fuzzy t)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso)))
 '(custom-safe-themes
   (quote
    ("9b35c097a5025d5da1c97dba45fed027e4fb92faecbd2f89c2a79d2d80975181" "c90fd1c669f260120d32ddd20168343f5c717ca69e95d2f805e42e88430c340e" "a2e7b508533d46b701ad3b055e7c708323fb110b6676a8be458a758dd8f24e27" "3629b62a41f2e5f84006ff14a2247e679745896b5eaa1d5bcfbc904a3441b0cd" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" default)))
 '(fci-rule-color "#202325")
 '(package-selected-packages
   (quote
    (rainbow-delimiters paredit yaml-mode kubernetes dockerfile-mode docker omnisharp csharp-mode powershell json-mode centered-window origami company-tern company xref-js2 js2-mode protobuf-mode go-autocomplete markdown-mode helm toml-mode rust-mode nasm-mode typescript-mode tss go-mode go py-autopep8 jedi flycheck fuzzy auto-complete magit ivy counsel swiper lorem-ipsum tabbar ace-window org-bullets which-key try use-package)))
 '(vc-annotate-background "#1f2124")
 '(vc-annotate-color-map
   (quote
    ((20 . "#ff0000")
     (40 . "#ff4a52")
     (60 . "#f6aa11")
     (80 . "#f1e94b")
     (100 . "#f5f080")
     (120 . "#f6f080")
     (140 . "#41a83e")
     (160 . "#40b83e")
     (180 . "#b6d877")
     (200 . "#b7d877")
     (220 . "#b8d977")
     (240 . "#b9d977")
     (260 . "#93e0e3")
     (280 . "#72aaca")
     (300 . "#8996a8")
     (320 . "#afc4db")
     (340 . "#cfe2f2")
     (360 . "#dc8cc3"))))
 '(vc-annotate-very-old-color "#dc8cc3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#26292c" :foreground "#f8f8f8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 119 :width normal :foundry "outline" :family "Consolas"))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/my-init.org"))
