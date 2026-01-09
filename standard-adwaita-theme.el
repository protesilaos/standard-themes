;;; standard-adwaita-theme.el --- Like the built-in adwaita theme, but more consistent  -*- lexical-binding: t; -*-

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
;;
;; The `standard-themes' are a collection of light and dark themes for
;; GNU Emacs.  The `standard-light' and `standard-dark' emulate the
;; out-of-the-box looks of Emacs (which technically do NOT constitute
;; a theme) while bringing to them thematic consistency,
;; customizability, and extensibility.  Other themes are stylistic
;; variations of those or other built-in themes.
;;
;; Why call them "standard"?  Obviously because: Standard Themes Are
;; Not Derivatives but the Affectionately Reimagined Default ... themes.

;;; Code:

(require 'standard-themes)

(defcustom standard-adwaita-palette-overrides nil
  "Overrides for `adwaita-palette'."
  :type '(repeat (list symbol (choice symbol string)))
  :group 'adwaita-theme)

(defconst standard-adwaita-palette
  (modus-themes-generate-palette
   `((bg-main "#EDEDED")
     (fg-main "#2E3436")
     (red "#c01c28")
     (green "#3a944a")
     (yellow "#c88800")
     (blue "#3584e4")
     (magenta "#9841bb")
     (cyan "#2190a4")

     (bg-tab-bar "#eeeeec")
     (bg-tab-other "#ffffff")

     (cursor "#00BBFF")
     (border "#EDEDED")
     (fringe "#E6E6E6")

     (bg-mode-line-active "white")
     (fg-mode-line-active "#2E3436")
     (bg-mode-line-inactive "white")
     (fg-mode-line-inactive "#C6C6C6")

     (fg-prompt "#0084C8")

     (bg-hl-line "#D9E2EF")
     (bg-region "#C2D5E9")

     (info "#4E9A06")
     (warning "#CE5C00")
     (err "#B50000")
     (builtin "#A020F0")
     (constant "#F5666D")
     (comment "#204A87")
     (fnname "#00578E")
     (keyword "#A52A2A")
     (string "#4E9A06")
     (type "#2F8B58")
     (variable "#0084C8")
     (warning "#F5666D")

     (fg-link "#0066CC")
     (fg-link-visited "#6799CC")

     (bg-mark-select "#4A90D9")
     (fg-mark-select "white")
     (bg-search-lazy "#77A4DD")
     (fg-search-lazy "white")
     (bg-hover "#4A90D9")

     (bg-search-current "#77A4DD")
     (fg-search-current "white")

     (fg-added "#4E9A06")
     (fg-removed "#F5666D")
     (bg-added "#eeffee")
     (bg-removed "#ffeeee")

     (mail-subject   "#FF7092")
     (mail-cite-0    "#00578E")
     (mail-cite-1    "#0084C8"))
   'cool
   nil
   (append
    '((fg-region unspecified)
      (bg-link unspecified)
      (bg-link-visited unspecified)
      (bg-line-number-inactive unspecified)
      (bg-line-number-active bg-hl-line)
      (mail-recipient mail-subject))
    standard-themes-common-palette-mappings)))

(defvar standard-adwaita-custom-faces
  `(`(dired-header ((,c (:weight bold :foreground "#0084C8"))))
    ;; `(widget-button ((,c (:weight bold :foreground "#0084C8"))))
    ;; `(success ((,c (:weight bold :foreground "#4E9A06"))))

    ;; `(highlight ((,c (:foreground "white" :background "#4A90D9"))))

    `(erc-action-face ((,c (:foreground "#F5666D"))))
    `(erc-button ((,c (:foreground "#A8799C"))))
    `(erc-current-nick-face ((,c (:weight bold :foreground "#FF7092"))))
    `(erc-error-face ((,c (:foreground "#F5666D" :weight bold))))
    `(erc-input-face ((,c (:foreground "black"))))
    `(erc-keyword-face ((,c (:foreground "#F5666D"))))
    `(erc-my-nick-face ((,c (:weight bold :foreground "#FF8CA7"))))
    `(erc-nick-default-face ((,c (:weight bold :foreground "#0084C8"))))
    `(erc-notice-face ((,c (:foreground "#0084C8"))))
    `(erc-prompt-face ((,c (:foreground "black"))))
    `(erc-timestamp-face ((,c (:foreground ,"#4CB64A"))))

    `(magit-log-sha1 ((,c (:foreground "#FF7092"))))
    `(magit-log-head-label-local ((,c (:foreground "#4F78B5"))))
    `(magit-log-head-label-remote ((,c (:foreground ,"#4CB64A"))))
    `(magit-branch ((,c (:weight bold :foreground "#0084C8"))))
    `(magit-section-title ((,c (:weight bold :foreground "#00578E"))))
    `(magit-item-highlight ((,c (:background "#FEFFBF"))))
    `(magit-diff-add ((,c (:weight bold :foreground "#4CB64A"))))
    `(magit-diff-del ((,c (:bold nil :foreground "#F5666D"))))

    `(gnus-group-mail-1-empty ((,c (:foreground "#00578E"))))
    `(gnus-group-mail-1 ((,c (:weight bold :foreground "#4F78B5"))))
    `(gnus-group-mail-3-empty ((,c (:foreground "#00578E"))))
    `(gnus-group-mail-3 ((,c (:weight bold :foreground "#9CBB43"))))
    `(gnus-group-news-3-empty ((,c (:foreground "#00578E"))))
    `(gnus-group-news-3 ((,c (:weight bold :foreground "#9CBB43"))))
    `(gnus-header-name ((,c (:weight bold :foreground "#0084C8"))))
    `(gnus-header-subject ((,c (:weight bold :foreground "#FF7092"))))
    `(gnus-header-content ((,c (:foreground "#FF7092"))))
    `(gnus-button ((,c (:weight bold :foreground "#00578E"))))
    `(gnus-cite-1 ((,c (:foreground "#00578E"))))
    `(gnus-cite-2 ((,c (:foreground "#0084C8"))))

    `(image-dired-thumb-mark ((,c (:background "#CE5C00"))))
    `(image-dired-thumb-flagged ((,c (:background "#B50000"))))

    ;; `(diff-added ((,c (:weight bold :foreground "#4E9A06"))))
    ;; `(diff-removed ((,c (:weight bold :foreground "#F5666D"))))
    ))

(modus-themes-theme
 'standard-adwaita
 'standard-themes
 "Like the built-in adwaita theme, but more consistent"
 'light
 'modus-themes-operandi-palette
 'standard-adwaita-palette
 'standard-adwaita-palette-overrides
 'standard-adwaita-custom-faces)

(provide 'standard-adwaita)
;;; standard-adwaita-theme.el ends here
