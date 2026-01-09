;;; standard-wombat.el --- Like the built-in wombat theme, but more consistent  -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Free Software Foundation, Inc.

;; Author: Elijah Gabe Pérez <eg642616@gmail.com>
;; Keywords: faces, theme, accessibility

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; TODO:

;;; Code:

(require 'standard-themes)

(defconst standard-wombat-palette
  (modus-themes-generate-palette
   '((bg-main "#242424")
     (fg-main "#f6f3e8")
     (fg-dim "#99968b") ; (?)
     (red "#e5786d") ; or "#b85149"
     (green "#92a65e") ; or "#cae982" or "#95e454"
     (yellow "#ddaa6f") ; or "#edc4a3" or "#ccaa8f"
     (yellow-faint "#ccaa8f") ; (?)
     (blue "#8ac6f2") ; or "#5b98c2" or "#333366"
     (magenta "#a6a1de") ; or "#64619a"
     (cyan "#70cecc") ; or "#3f9f9e"

     (cursor "#656565")
     (fringe "#303030")
     (border "#303030")

     (bg-search-current "#343434")
     (fg-search-current "#857b6f")

     (bg-hover "#333333")
     (bg-hover-secondary "#333366")
     (bg-hl-line "#404040")
     (bg-region "#4f4f4f")

     (bg-mode-line-active "#444444")
     (fg-mode-line-active "#f6f3e8")
     (fg-mode-line-inactive "#857b6f")

     (bg-tab-bar "#303030")

     (fg-link "#8ac6f2")
     (fg-link-visited "#e5786d")

     (fg-prompt "#e5786d")

     (comment "#99968b")
     (constant "#e5786d")
     (keyword "#8ac6f2")
     (string "#95e454")
     (docstring "#cae982")
     (type "#92a65e")
     (variable "#cae682")
     (warning "#ff9900")
     (info "#95e454")

     (keybind "#ddaa6f")

     (mail-subject "#cae682")
     (mail-recipient "#95e454")
     (mail-cite-0 "#99968b")
     (mail-cite-1 "#92a65e")
     (mail-cite-2 "#ddaa6f")
     (mail-cite-3 "#ff9900")
     (mail-other "#95e454")

     (bg-button-active "#333333")
     (fg-button-active "#f6f3e8")

     (bg-mark-select "#333366")
     (bg-search-lazy "#384048")
     (fg-search-lazy "#a0a8b0"))
   'warm
   nil
   (append
    '((bg-line-number-inactive unspecified)
      (bg-line-number-active bg-hl-line)
      (fg-region unspecified)
      (bg-link unspecified)
      (underline-link fg-link)
      (bg-link-visited unspecified)
      (underline-link-visited fg-link-visited)
      (bg-line-number-inactive unspecified)
      (bg-line-number-active bg-hl-line)
      (builtin constant)
      (preprocessor constant)
      (fnname variable)
      (fnname-call fnname)
      (mail-recipient mail-subject)
      (fg-mark-select fg-main))
    standard-themes-common-palette-mappings)))

(defcustom standard-wombat-palette-overrides nil
  "Overrides for `standard-wombat-palette'."
  :type '(repeat (list symbol (choice symbol string)))
  :group 'wombat-theme)

;; Extracted from wombat-theme.el,
;; override some faces which exclusive from wombat-theme.el.
(defvar standard-wombat-custom-faces
  `(`(hl-line ((,c (:background ,bg-hl-line :underline (:color ,fg-dim :style line :position t)))))
    `(highlight ((,c (:background "#454545" :foreground "#ffffff" :underline t))))
    `(mode-line ((,c (:inherit modus-themes-ui-variable-pitch
                               :background ,bg-mode-line-active
                               :foreground ,fg-mode-line-active
                               :box nil))))
    `(mode-line-inactive ((,c (:inherit modus-themes-ui-variable-pitch
                                        :background ,bg-mode-line-inactive
                                        :foreground ,fg-mode-line-inactive
                                        :box nil))))
    `(homoglyph ((,c (:foreground "#ddaa6f" :weight bold))))
    `(help-key-binding ((,c (:background "#333333" :foreground "#f6f3e8"))))
    `(header-line ((,c (:background "#303030" :foreground "#e7f6da"))))
    `(gnus-group-news-1-low ((,c (:foreground "#95e454"))))
    `(gnus-group-news-2 ((,c (:weight bold :foreground "#cae682"))))
    `(gnus-group-news-2-low ((,c (:foreground "#cae682"))))
    ;; `(gnus-group-news-3 ((,c (:weight bold :foreground "#ccaa8f"))))
    `(gnus-group-news-3-low ((,c (:foreground "#ccaa8f"))))
    `(gnus-group-news-4 ((,c (:weight bold :foreground "#99968b"))))
    `(gnus-group-news-4-low ((,c (:foreground "#99968b"))))
    `(gnus-group-news-5 ((,c (:weight bold :foreground "#cae682"))))
    `(gnus-group-news-5-low ((,c (:foreground "#cae682"))))
    ;; `(gnus-group-news-low ((,c (:foreground "#99968b"))))
    `(gnus-group-mail-1 ((,c (:weight bold :foreground "#95e454"))))
    `(gnus-group-mail-1-low ((,c (:foreground "#95e454"))))
    `(gnus-group-mail-2 ((,c (:weight bold :foreground "#cae682"))))
    `(gnus-group-mail-2-low ((,c (:foreground "#cae682"))))
    `(gnus-group-mail-3 ((,c (:weight bold :foreground "#ccaa8f"))))
    `(gnus-group-mail-3-low ((,c (:foreground "#ccaa8f"))))
    `(gnus-group-mail-low ((,c (:foreground "#99968b"))))
    `(gnus-header-content ((,c (:foreground "#8ac6f2"))))
    ;; `(gnus-header-from ((,c (:weight bold :foreground "#95e454"))))
    ;; `(gnus-header-subject ((,c (:foreground "#cae682"))))
    `(gnus-header-name ((,c (:foreground "#8ac6f2"))))
    `(gnus-header-newsgroups ((,c (:foreground "#cae682"))))
    `(message-header-name ((,c (:foreground "#8ac6f2" :weight bold))))
    `(message-separator ((,c (:foreground "#e5786d" :weight bold))))))

(modus-themes-theme
 'standard-wombat
 'standard-themes
 "Like the built-in wombat theme, but more consistent."
 'dark
 'modus-themes-vivendi-palette
 'standard-wombat-palette
 'standard-wombat-palette-overrides
 'standard-wombat-custom-faces)

(provide 'standard-wombat)
;;; standard-wombat.el ends here
