(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;;; Fire up package.el
(setq package-enable-at-startup nil)
(package-initialize)

;; Proxy settings
(setq url-gateway-method 'socks)
(setq socks-server '("Default server" "127.0.0.1" 6153 5))
;;(setq socks-server '("Default server" "10.159.32.155" 1081 5))

;; Color theme config
(require 'color-theme-sanityinc-tomorrow)

