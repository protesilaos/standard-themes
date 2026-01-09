;;; standard-wombat-theme.el --- Like the built-in wombat theme, but more consistent  -*- lexical-binding: t; -*-

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

(defconst standard-wombat-palette
  (modus-themes-generate-palette
   '((bg-main "#242424")
     (fg-main "#f6f3e8")
     (fg-dim "#99968b")
     (red "#e5786d")
     (red-warmer "#ff9900")
     (red-cooler "#b85149")
     (green "#95e454")
     (green-warmer "#cae682")
     (green-faint "#92a65e")
     (yellow "#ddaa6f") ; or "#edc4a3" or "#ccaa8f"
     (yellow-faint "#ccaa8f")
     (blue "#8ac6f2")
     (blue-faint "#5b98c2")
     (magenta "#a6a1de")
     (magenta-faint "#64619a")
     (cyan "#70cecc")
     (cyan-faint "#3f9f9e")

     (bg-blue-subtle "#333366")

     (cursor "#656565")
     (fringe "#303030")
     (border "#303030")

     (bg-search-current "#343434")
     (fg-search-current "#857b6f")

     (bg-hover "#333333")
     (bg-hl-line "#404040")
     (bg-region "#4f4f4f")

     (bg-mode-line-active "#444444")
     (fg-mode-line-active "#f6f3e8")
     (fg-mode-line-inactive "#857b6f")

     (bg-tab-bar "#303030")

     (bg-button-active "#333333")
     (fg-button-active "#f6f3e8")

     (bg-search-lazy "#384048")
     (fg-search-lazy "#a0a8b0")

     (bg-added          "#00331f")
     (bg-added-faint    "#002410")
     (bg-added-refine   "#03492f")
     (fg-added          "#4fb04f")
     (bg-changed        "#323200")
     (bg-changed-faint  "#281a00")
     (bg-changed-refine "#484800")
     (fg-changed        "#e0cf03")
     (bg-removed        "#4a1119")
     (bg-removed-faint  "#320a0f")
     (bg-removed-refine "#751a1f")
     (fg-removed        "#ff5f5f"))
   'warm
   nil
   (append
    '((fg-link blue)
      (fg-link-visited red)

      (fg-prompt red)

      (comment fg-dim)
      (constant red)
      (keyword blue)
      (string green)
      (docstring green-warmer)
      (type green-faint)
      (variable green-warmer)
      (warning red-warmer)
      (info green)

      (keybind yellow)

      (mail-subject green-warmer)
      (mail-recipient green)
      (mail-cite-0 fg-dim)
      (mail-cite-1 green-faint)
      (mail-cite-2 yellow)
      (mail-cite-3 red-warmer)
      (mail-other green)

      (bg-hover-secondary bg-blue-subtle)
      (bg-line-number-inactive unspecified)
      (bg-line-number-active bg-hl-line)
      (fg-region unspecified)
      (underline-link fg-link)
      (underline-link-visited fg-link-visited)
      (bg-line-number-inactive unspecified)
      (bg-line-number-active bg-hl-line)
      (builtin constant)
      (preprocessor constant)
      (fnname variable)
      (fnname-call fnname)
      (mail-recipient mail-subject)

      (bg-mark-select bg-blue-subtle)
      (fg-mark-delete red))
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
    `(homoglyph ((,c (:foreground ,yellow :weight bold))))
    `(help-key-binding ((,c (:background "#333333" :foreground "#f6f3e8"))))
    `(header-line ((,c (:background "#303030" :foreground "#e7f6da"))))
    `(gnus-group-news-1-low ((,c (:foreground ,green))))
    `(gnus-group-news-2 ((,c (:weight bold :foreground ,green-warmer))))
    `(gnus-group-news-2-low ((,c (:foreground ,green-warmer))))
    ;; `(gnus-group-news-3 ((,c (:weight bold :foreground "#ccaa8f"))))
    `(gnus-group-news-3-low ((,c (:foreground "#ccaa8f"))))
    `(gnus-group-news-4 ((,c (:weight bold :foreground ,fg-dim))))
    `(gnus-group-news-4-low ((,c (:foreground ,fg-dim))))
    `(gnus-group-news-5 ((,c (:weight bold :foreground ,green-warmer))))
    `(gnus-group-news-5-low ((,c (:foreground ,green-warmer))))
    ;; `(gnus-group-news-low ((,c (:foreground ,fg-dim))))
    `(gnus-group-mail-1 ((,c (:weight bold :foreground ,green))))
    `(gnus-group-mail-1-low ((,c (:foreground ,green))))
    `(gnus-group-mail-2 ((,c (:weight bold :foreground ,green-warmer))))
    `(gnus-group-mail-2-low ((,c (:foreground ,green-warmer))))
    `(gnus-group-mail-3 ((,c (:weight bold :foreground "#ccaa8f"))))
    `(gnus-group-mail-3-low ((,c (:foreground "#ccaa8f"))))
    `(gnus-group-mail-low ((,c (:foreground ,fg-dim))))
    `(gnus-header-content ((,c (:foreground ,blue))))
    ;; `(gnus-header-from ((,c (:weight bold :foreground ,green))))
    ;; `(gnus-header-subject ((,c (:foreground ,green-warmer))))
    `(gnus-header-name ((,c (:foreground ,blue))))
    `(gnus-header-newsgroups ((,c (:foreground ,green-warmer))))
    `(message-header-name ((,c (:foreground ,blue :weight bold))))
    `(message-separator ((,c (:foreground ,red :weight bold))))))

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
;;; standard-wombat-theme.el ends here
