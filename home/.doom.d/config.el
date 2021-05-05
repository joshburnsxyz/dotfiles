;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Josh Burns"
      user-mail-address "joshyburnss@gmail.com")

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
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-city-lights)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documents/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; RSS Feeds
(require 'elfeed-goodies)
(elfeed-goodies/setup)
(setq elfeed-goodies/entry-pane-size 0.5)
(setq elfeed-feeds '(("https://www.reddit.com/r/linux.rss" reddit linux)
                    ("https://www.reddit.com/r/commandline.rss" reddit linux)
                    ("https://www.reddit.com/r/emacs.rss" reddit linux)
                    ("https://www.reddit.com/r/australia.rss" reddit news)
                    ("https://www.gamingonlinux.com/article_rss.php" gaming linux)
                    ("https://hackaday.com/blog/feed/" hackaday linux)
                    ("https://opensource.com/feed" opensource linux)
                    ("https://linux.softpedia.com/backend.xml" softpedia linux)
                    ("https://itsfoss.com/feed/" itsfoss linux)
                    ("https://www.zdnet.com/topic/linux/rss.xml" zdnet linux)
                    ("https://www.phoronix.com/rss.php" phoronix linux)
                    ("https://www.computerworld.com/index.rss" computerworld linux)
                    ("https://www.networkworld.com/category/linux/index.rss" networkworld linux)
                    ("https://betanews.com/feed" betanews linux)
                    ("http://lxer.com/module/newswire/headlines.rss" lxer linux)
                    ("https://distrowatch.com/news/dwd.xml" distrowatch linux)))

;; Org Capture templates
(setq org-capture-templates
  '(("t" "Todo" entry (file+headline "~/Documents/org/master_todos.org" "Tasks")
     "* TODO %?\n %i\n %a))
