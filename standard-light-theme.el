;;; standard-light-theme.el --- Like the unthemed light Emacs, but more consistent -*- lexical-binding:t -*-

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

(defconst standard-light-palette
  (modus-themes-generate-palette
   '((bg-main     "#ffffff")
     (fg-main     "#000000")
     (bg-dim      "#ebebeb")
     (fg-dim      "#7f7f7f")
     (bg-alt      "#dcdcdc")
     (fg-alt      "#193f8f")
     (bg-active   "#bfbfbf")
     (bg-inactive "#f0f0f0")
     (border      "#bababa")
     (red             "#b3303a")
     (red-warmer      "#e00033")
     (red-cooler      "#ce2b50")
     (red-faint       "#b22222")
     (green           "#228b22")
     (green-warmer    "#4f7400")
     (green-cooler    "#008858")
     (green-faint     "#61756c")
     (yellow          "#a45f22")
     (yellow-warmer   "#b6532f")
     (yellow-cooler   "#a0522d")
     (yellow-faint    "#76502a")
     (blue            "#001faf")
     (blue-warmer     "#3a5fcd")
     (blue-cooler     "#0000ff")
     (blue-faint      "#483d8b")
     (magenta         "#721045")
     (magenta-warmer  "#8b2252")
     (magenta-cooler  "#800080")
     (magenta-faint   "#8f4499")
     (cyan            "#1f6fbf")
     (cyan-warmer     "#2f8fab")
     (cyan-cooler     "#008b8b")
     (cyan-faint      "#3f7a80")
     (bg-red-intense     "#ff8f88")
     (bg-green-intense   "#8adf80")
     (bg-yellow-intense  "#f3d000")
     (bg-blue-intense    "#bfc9ff")
     (bg-magenta-intense "#dfa0f0")
     (bg-cyan-intense    "#a4d5f9")
     (bg-red-subtle      "#ffcfbf")
     (bg-green-subtle    "#b3fabf")
     (bg-yellow-subtle   "#fff576")
     (bg-blue-subtle     "#ccdfff")
     (bg-magenta-subtle  "#ffddff")
     (bg-cyan-subtle     "#bfefff")
     (bg-red-nuanced     "#fff1f0")
     (bg-green-nuanced   "#ecf7ed")
     (bg-yellow-nuanced  "#fff3da")
     (bg-blue-nuanced    "#f3f3ff")
     (bg-magenta-nuanced "#fdf0ff")
     (bg-cyan-nuanced    "#ebf6fa")
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
     (fg-removed        "#a02a2a")
     (bg-mark-other  "#c0effa")
     (fg-mark-other  "#1f6fb0")
     (bg-mark-delete  "#ffd5ea")
     (fg-mark-delete "#b32230")
     (bg-mark-select  "#fafa7b")
     (fg-mark-select  "#805f00")
     (bg-completion "#bfe8ff")
     (bg-hover      "#aaeccf")
     (bg-hover-secondary  "#ffff00")
     (bg-hl-line    "#b4eeb4")
     (bg-region     "#eedc82")
     (bg-paren-match "#40e0d0")
     (bg-mode-line-active        "#b3b3b3")
     (fg-mode-line-active        "#000000")
     (border-mode-line-active    "#5a5a5a")
     (bg-mode-line-inactive      "#e5e5e5")
     (fg-mode-line-inactive      "#7f7f7f")
     (border-mode-line-inactive  "#bababa")
     (modeline-err     "#b02020")
     (modeline-warning "#5f1080")
     (modeline-info    "#002fb0")
     (underline-err     "#ef0f1f")
     (underline-warning "#bf5f00")
     (underline-note    "#02af52")
     (rainbow-0 "#191970"))
   'cool
   nil
   (append
    '((cursor fg-main)
      (name green-cooler)
      (keybind blue)
      (err red-warmer)
      (warning yellow-warmer)
      (info green)
      (fg-prompt blue-cooler)
      (builtin blue-faint)
      (comment red-faint)
      (constant cyan-cooler)
      (fnname blue-cooler)
      (fnname-call blue-faint)
      (keyword magenta-cooler)
      (preprocessor blue-faint)
      (docstring magenta-warmer)
      (string magenta-warmer)
      (type green)
      (variable yellow-cooler)
      (variable-use yellow-faint)
      (rx-backslash green) ; compare with `string'
      (rx-construct fg-main)
      (accent-0 blue)
      (accent-1 red-cooler)
      (accent-2 green)
      (accent-3 magenta-cooler)
      (fg-link blue-warmer)
      (bg-link unspecified)
      (underline-link blue-warmer)
      (fg-link-visited magenta)
      (bg-link-visited unspecified)
      (underline-link-visited magenta)
      (mail-cite-0 magenta)
      (mail-cite-1 cyan-cooler)
      (mail-cite-2 yellow-cooler)
      (mail-cite-3 red-warmer)
      (mail-recipient blue)
      (mail-subject magenta-cooler)
      (mail-other cyan))
    standard-themes-common-palette-mappings))
  "The `standard-light' palette.
Color values have the form (COLOR-NAME HEX-VALUE) with the former
as a symbol and the latter as a string.
Semantic color mappings have the form (MAPPING-NAME COLOR-NAME)
with both as symbols.  The latter is a color that already exists
in the palette and is associated with a HEX-VALUE.")

(defcustom  standard-light-palette-overrides nil
  "Overrides for `standard-light-palette'.

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
 'standard-light
 'standard-themes
 "Like the unthemed light Emacs, but more consistent."
 'light
 'modus-operandi-palette
 'standard-light-palette
 'standard-light-palette-overrides
 'standard-themes-custom-faces)

;;; standard-light-theme.el ends here
