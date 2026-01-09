;;; standard-adwaita-theme.el --- Like the built-in adwaita theme, but more consistent  -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Free Software Foundation, Inc.

;; Author: Elijah Gabe Pérez <eg642616@gmail.com>,
;;         Protesilaos Stavrou <info@protesilaos.com>
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
   `((bg-main "#ededed")
     (fg-main "#2e3436")
     (red "#b50000")
     (red-warmer "#c01c28")
     (red-faint "#a52a2a")
     (red-intense "#f5666d")
     (green "#4cb64a")
     (green-warmer "#4e9a06")
     (green-cooler "#2f8b58")
     (green-faint "#9cbb43")
     (yellow "#c88800")
     (yellow-intense "#ce5c00")
     (blue "#3584e4")
     (blue-cooler "#0066cc")
     (blue-faint "#204a87")
     (magenta "#9841bb")
     (magenta-cooler "#a020f0")
     (magenta-intense "#ff7092")
     (cyan "#2190a4")
     (cyan-cooler "#0084c8")
     (cyan-faint "#00578e")

     (bg-blue-intense "#6799cc")

     (bg-tab-bar "#eeeeec")
     (bg-tab-other "#ffffff")

     (cursor "#00bbff")
     (border "#ededed")
     (fringe "#e6e6e6")

     (bg-mode-line-active "#ffffff")
     (fg-mode-line-active "#2e3436")
     (bg-mode-line-inactive "#ffffff")
     (fg-mode-line-inactive "#c6c6c6")

     (bg-hl-line "#d9e2ef")
     (bg-region "#c2d5e9")

     (fg-search-current "#ffffff")

     (bg-added          "#c0f8d0")
     (bg-added-faint    "#d0ffe0")
     (bg-added-refine   "#b4e8c4")
     (fg-added          "#007200")
     (bg-changed        "#ffdfa9")
     (bg-changed-faint  "#ffefbf")
     (bg-changed-refine "#fac090")
     (fg-changed        "#8d6a12")
     (bg-removed        "#ffd8d5")
     (bg-removed-faint  "#ffe9e9")
     (bg-removed-refine "#f3b5af")
     (fg-removed        "#a02a2a"))
   'cool
   nil
   (append
    '((fg-prompt cyan-cooler)

      (info green-warmer)
      (warning yellow-intense)
      (err red)

      (builtin magenta-cooler)
      (constant red-intense)
      (comment blue-faint)
      (docstring green-cooler)
      (fnname cyan-faint)
      (keyword red-faint)
      (string green-warmer)
      (type green-cooler)
      (variable cyan-cooler)
      (warning red-intense)

      (fg-link blue-cooler)
      (fg-link-visited cyan)

      (fg-region unspecified)
      (bg-line-number-inactive unspecified)
      (bg-line-number-active bg-hl-line)

      (bg-search-lazy bg-cyan-subtle)
      (bg-search-current bg-blue-intense)

      (bg-mark-select bg-blue-subtle)
      (fg-mark-select fg-main)
      (bg-mark-delete bg-red-subtle)
      (fg-mark-delete fg-main)
      (bg-mark-other bg-yellow-subtle)
      (fg-mark-other fg-main)

      (bg-hover bg-cyan-intense)

      (mail-subject magenta-intense)
      (mail-cite-0 cyan-faint)
      (mail-cite-1 cyan-cooler)
      (mail-recipient magenta-intense))
    standard-themes-common-palette-mappings)))

(defvar standard-adwaita-custom-faces
  '(
    `(dired-header ((,c :weight bold :foreground ,cyan-cooler)))

    `(erc-action-face ((,c :foreground ,red-intense)))
    `(erc-button ((,c :foreground "#a8799c")))
    `(erc-current-nick-face ((,c :weight bold :foreground ,magenta-intense)))
    `(erc-error-face ((,c :foreground ,red-intense :weight bold)))
    `(erc-input-face ((,c :foreground "black")))
    `(erc-keyword-face ((,c :foreground ,red-intense)))
    `(erc-my-nick-face ((,c :weight bold :foreground "#ff8ca7")))
    `(erc-nick-default-face ((,c :weight bold :foreground ,cyan-cooler)))
    `(erc-notice-face ((,c :foreground ,cyan-cooler)))
    `(erc-prompt-face ((,c :foreground "black")))
    `(erc-timestamp-face ((,c :foreground ,green)))

    `(gnus-group-mail-1-empty ((,c :foreground ,cyan-faint)))
    `(gnus-group-mail-1 ((,c :weight bold :foreground "#4f78b5")))
    `(gnus-group-mail-3-empty ((,c :foreground ,cyan-faint)))
    `(gnus-group-mail-3 ((,c :weight bold :foreground ,green-faint)))
    `(gnus-group-news-3-empty ((,c :foreground ,cyan-faint)))
    `(gnus-group-news-3 ((,c :weight bold :foreground ,green-faint)))
    `(gnus-header-name ((,c :weight bold :foreground ,cyan-cooler)))
    `(gnus-header-subject ((,c :weight bold :foreground ,magenta-intense)))
    `(gnus-header-content ((,c :foreground ,magenta-intense)))
    `(gnus-button ((,c :weight bold :foreground ,cyan-faint)))))

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
