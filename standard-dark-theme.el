;;; standard-dark-theme.el --- Like the unthemed dark Emacs, but more consistent -*- lexical-binding:t -*-

;; Copyright (C) 2022-2025  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Maintainer: Protesilaos Stavrou <info@protesilaos.com>
;; URL: https://github.com/protesilaos/standard-themes
;; Keywords: faces, theme, accessibility

;; This file is NOT part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; The `standard-themes' are a collection of light and dark themes for
;; GNU Emacs.  The `standard-light' and `standard-dark' emulate the
;; out-of-the-box looks of Emacs (which technically do NOT constitute
;; a theme) while bringing to them thematic consistency,
;; customizability, and extensibility.  Other themes are stylistic
;; variations of those.
;;
;; Why call them "standard"?  Obviously because: Standard Themes Are
;; Not Derivatives but the Affectionately Reimagined Default ... themes.

;;; Code:



(require 'standard-themes)

(defconst standard-dark-palette
  (modus-themes-generate-palette
   '((bg-main     "#000000")
     (fg-main     "#ffffff")
     (bg-dim      "#272727")
     (fg-dim      "#a6a6a6")
     (bg-alt      "#363636")
     (fg-alt      "#a0afef")
     (bg-active   "#606060")
     (bg-inactive "#202020")
     (border      "#606070")
     (red             "#ff6f60")
     (red-warmer      "#ff7f24")
     (red-cooler      "#ff778f")
     (red-faint       "#ee5c42")
     (green           "#44cc44")
     (green-warmer    "#7abd0f")
     (green-cooler    "#98fb98")
     (green-faint     "#61a06c")
     (yellow          "#eedd82")
     (yellow-warmer   "#fec43f")
     (yellow-cooler   "#ffa07a")
     (yellow-faint    "#dfb08f")
     (blue            "#87ceff")
     (blue-warmer     "#80aaff")
     (blue-cooler     "#02cfff")
     (blue-faint      "#b0c4de")
     (magenta         "#df8faf")
     (magenta-warmer  "#ff8fe7")
     (magenta-cooler  "#ce82ff")
     (magenta-faint   "#efafdf")
     (cyan            "#00ffff")
     (cyan-warmer     "#87cefa")
     (cyan-cooler     "#7fffd4")
     (cyan-faint      "#6acbcb")
     (bg-red-intense     "#9d1f1f")
     (bg-green-intense   "#2f822f")
     (bg-yellow-intense  "#7a6100")
     (bg-blue-intense    "#1640b0")
     (bg-magenta-intense "#7030af")
     (bg-cyan-intense    "#2266ae")
     (bg-red-subtle      "#620f2a")
     (bg-green-subtle    "#00422a")
     (bg-yellow-subtle   "#4a4000")
     (bg-blue-subtle     "#242679")
     (bg-magenta-subtle  "#552f5f")
     (bg-cyan-subtle     "#004065")
     (bg-red-nuanced     "#2c0614")
     (bg-green-nuanced   "#001904")
     (bg-yellow-nuanced  "#221000")
     (bg-blue-nuanced    "#0f0e39")
     (bg-magenta-nuanced "#230631")
     (bg-cyan-nuanced    "#041529")
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
     (fg-removed        "#ff5f5f")
     (bg-mark-other  "#002f4a")
     (fg-mark-other  "#57cefa")
     (bg-mark-delete  "#440d09")
     (fg-mark-delete  "#ff5f60")
     (bg-mark-select  "#333000")
     (fg-mark-select  "#d0d082")
     (bg-completion "#254b5f")
     (bg-hover      "#457b2f")
     (bg-hover-secondary  "#00688b")
     (bg-hl-line    "#334815")
     (bg-region     "#20009d")
     (bg-paren-match "#4f94cd")
     (bg-mode-line-active        "#505050")
     (fg-mode-line-active        "#ffffff")
     (border-mode-line-active    "#959595")
     (bg-mode-line-inactive      "#323232")
     (fg-mode-line-inactive      "#a6a6a6")
     (border-mode-line-inactive  "#606070")
     (modeline-err     "#ff80af")
     (modeline-warning "#dfcf33")
     (modeline-info    "#2fc82f")
     (underline-err     "#df2f2f")
     (underline-warning "#c0b000")
     (underline-note    "#22b022")
     (rainbow-0 "#afeeee"))
   'cool
   nil
   (append
    '((cursor fg-main)
      (name cyan-cooler)
      (keybind blue-cooler)
      (err red)
      (warning yellow-warmer)
      (info green)
      (fg-prompt blue)
      (builtin blue-faint)
      (comment red-warmer)
      (constant cyan-cooler)
      (fnname cyan-warmer)
      (fnname-call cyan-faint)
      (keyword cyan)
      (preprocessor blue-faint)
      (docstring yellow-cooler)
      (string yellow-cooler)
      (type green-cooler)
      (variable yellow)
      (variable-use yellow-faint)
      (rx-backslash green) ; compare with `string'
      (rx-construct fg-main)
      (accent-0 blue-warmer)
      (accent-1 red-cooler)
      (accent-2 green)
      (accent-3 magenta-cooler)
      (fg-link cyan)
      (bg-link unspecified)
      (underline-link blue-warmer)
      (fg-link-visited magenta-cooler)
      (bg-link-visited unspecified)
      (underline-link-visited magenta)
      (mail-cite-0 magenta-warmer)
      (mail-cite-1 cyan-cooler)
      (mail-cite-2 yellow)
      (mail-cite-3 red)
      (mail-recipient blue)
      (mail-subject magenta-cooler)
      (mail-other cyan))
    standard-themes-common-palette-mappings))
  "The `standard-dark' palette.
Color values have the form (COLOR-NAME HEX-VALUE) with the former
as a symbol and the latter as a string.

Semantic color mappings have the form (MAPPING-NAME COLOR-NAME)
with both as symbols.  The latter is a color that already exists
in the palette and is associated with a HEX-VALUE.")

(defcustom standard-dark-palette-overrides nil
  "Overrides for `standard-dark-palette'.

Mirror the elements of the aforementioned palette, overriding
their value.

For overrides that are shared across all of the Standard themes,
refer to `standard-themes-common-palette-overrides'.

Theme-specific overrides take precedence over shared overrides.
The idea of common overrides is to change semantic color
mappings, such as to make the cursor red.  Wherea theme-specific
overrides can also be used to change the value of a named color,
such as what hexadecimal RGB value the red-warmer symbol
represents."
  :group 'standard-themes
  :package-version '(standard-themes . "1.2.0")
  :type '(repeat (list symbol (choice symbol string)))
  :link '(info-link "(standard-themes) Palette overrides"))

(modus-themes-theme
 'standard-dark
 'standard-themes
 "Like the unthemed dark Emacs, but more consistent."
 'dark
 'modus-vivendi-palette
 'standard-dark-palette
 'standard-dark-palette-overrides
 'standard-themes-custom-faces)

;;; standard-dark-theme.el ends here
