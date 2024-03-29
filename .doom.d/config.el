;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Paulo Sudério"
      user-mail-address "paulo.suderio@gmail.com")

;; Muitas ideias foram retiradas da configuração em
;; https://tecosaur.github.io/emacs-config/config.html#markdown

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :name "DejaVu Sans Mono for Powerline" :size 14))
(setq doom-unicode-font (font-spec :name "DejaVu Sans Mono for Powerline" :size 20))
;;(setq doom-font (font-spec :family "monospace" :size 14))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.

;; Set up bbdb
;; Exemplo de configuração para calendário e email (notmuch)
;;(require 'bbdb)
;;(bbdb-initialize 'message)
;;(bbdb-insinuate-message)
;;(add-hook 'message-setup-hook 'bbdb-insinuate-mail)
;;;; set up calendar
;;(require 'calfw)
;;(require 'calfw-ical)
;;;; Set this to the URL of your calendar. Google users will use
;;;; the Secret Address in iCalendar Format from the calendar settings
;;(cfw:open-ical-calendar "https://calendar.google.com/calendar?cid=cGF1bG8uc3VkZXJpb0BnbWFpbC5jb20")
;;;; Set up notmuch
;;(require 'notmuch)
;;;; set up mail sending using sendmail
;;(setq send-mail-function (quote sendmail-send-it))
;;(setq user-mail-address "paulo.suderio@gmail.com"
;;      user-full-name "Paulo Suderio")
