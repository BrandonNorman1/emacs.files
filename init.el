(require 'package)
;;So I can stuff from MELPA
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   (quote
    (("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-selected-packages (quote (csharp-mode linum-relative evil haskell-mode))))
(package-initialize)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;Get rid of ugly menu bar
(menu-bar-mode 0)
;;Ido. Interactively do things. Built in narrowing fuzzy search
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
;;Get rid of ugly splash screen
(setq inhibit-splash-screen t)
;;Extensible vi something something. VIM-like commands in EMACS
(require 'evil)
(evil-mode 1)
;;Relative line numbering for great help
(require 'linum-relative)
(linum-relative-global-mode 1)
;;A space between line numbers and lines
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
      (append '(("\\.cs" . csharp-mode)) auto-mode-alist))
