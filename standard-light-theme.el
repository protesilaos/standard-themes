;;; standard-light-theme.el --- Like the unthemed light Emacs, but more consistent -*- lexical-binding:t -*-

;; Copyright (C) 2022-2024  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Maintainer: Protesilaos Stavrou <info@protesilaos.com>
;; URL: https://github.com/protesilaos/standard-themes
;; Keywords: faces, theme, accessibility

;; This file is part of GNU Emacs.

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
;; The `standard-themes' are a pair of light and dark themes for GNU
;; Emacs.  They emulate the out-of-the-box looks of Emacs (which
;; technically do NOT constitute a theme) while bringing to them
;; thematic consistency, customizability, and extensibility.
;;
;; Why call them "standard"?  Obviously because: Standard Themes Are
;; Not Derivatives but the Affectionately Reimagined Default ... themes.

;;; Code:



(eval-and-compile
  (require 'standard-themes)

;;;###theme-autoload
  (deftheme standard-light
    "Like the unthemed light Emacs, but more consistent."
    :background-mode 'light
    :kind 'color-scheme
    :family 'standard)

  (defconst standard-light-palette
    '(
;;; Basic values

      (bg-main     "#ffffff")
      (fg-main     "#000000")
      (bg-dim      "#ededed")
      (fg-dim      "#7f7f7f")
      (bg-alt      "#dcdcdc")
      (fg-alt      "#193f8f")
      (bg-active   "#bfbfbf")
      (bg-inactive "#f5f5f5")
      (border      "#bababa")

;;; Basic accent foregrounds

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

;;; Common accent backgrounds

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

;;; Diffs

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

;;; Marks

      (bg-mark-alt  "#c0effa")
      (fg-mark-alt  "#1f6fb0")

      (bg-mark-del  "#ffd5ea")
      (fg-mark-del  "#b32230")

      (bg-mark-sel  "#fafa7b")
      (fg-mark-sel  "#805f00")

;;; Graphs

      (red-graph-0-bg     "#ef7969")
      (red-graph-1-bg     "#ffaab4")
      (green-graph-0-bg   "#4faa09")
      (green-graph-1-bg   "#8fef00")
      (yellow-graph-0-bg  "#ffcf00")
      (yellow-graph-1-bg  "#f9ff00")
      (blue-graph-0-bg    "#7090ff")
      (blue-graph-1-bg    "#9fc6ff")
      (magenta-graph-0-bg "#e07fff")
      (magenta-graph-1-bg "#fad0ff")
      (cyan-graph-0-bg    "#70d3f0")
      (cyan-graph-1-bg    "#afefff")

;;; Special hues

      (bg-accent     "#0000cc")
      (bg-completion "#bfe8ff")
      (bg-hover      "#aaeccf")
      (bg-hover-alt  "#ffff00")
      (bg-hl-line    "#b4eeb4")
      (bg-region     "#eedc82")
      (fg-region     unspecified)
      (bg-paren      "#40e0d0")
      (bg-err        "#ffd5ea") ; check with err
      (bg-warning    "#ffeabb") ; check with warning
      (bg-info       "#d0efda") ; check with info

      (bg-mode-line-active        "#b3b3b3")
      (fg-mode-line-active        "#000000")
      (border-mode-line-active    "#5a5a5a")
      (bg-mode-line-inactive      "#e5e5e5")
      (fg-mode-line-inactive      "#7f7f7f")
      (border-mode-line-inactive  "#bababa")

      (bg-tab              "#d9d9d9")
      (bg-tab-inactive     "#bfbfbf")
      (bg-tab-inactive-alt "#a6a6a6")

      (modeline-err     "#b02020")
      (modeline-warning "#5f1080")
      (modeline-info    "#002fb0")

      (underline-err     "#ef0f1f")
      (underline-warning "#bf5f00")
      (underline-info    "#02af52")

;;; Mappings

;;;; General mappings

      (cursor fg-main)
      (fringe bg-dim)
      (name green-cooler)
      (keybind blue)

      (err red-warmer)
      (warning yellow-warmer)
      (info green)

;;;; Date mappings

      (date-common cyan-warmer)
      (date-deadline red)
      (date-event fg-alt)
      (date-holiday red-cooler)
      (date-now fg-main)
      (date-range fg-alt)
      (date-scheduled green)
      (date-weekday cyan-warmer)
      (date-weekend red)

;;;; Prompt mappings

      (bg-prompt unspecified)
      (fg-prompt blue-cooler)

;;;; Code mappings

      (builtin blue-faint)
      (comment red-faint)
      (constant cyan-cooler)
      (fnname blue-cooler)
      (keyword magenta-cooler)
      (preprocessor blue-faint)
      (docstring magenta-warmer)
      (string magenta-warmer)
      (type green)
      (variable yellow-cooler)
      (rx-escape green) ; compare with `string'
      (rx-construct fg-main)

;;;; Accent mappings

      (accent-0 blue)
      (accent-1 red-cooler)
      (accent-2 green)
      (accent-3 magenta-cooler)

;;;; Line number mappings

      (fg-line-number-inactive fg-dim)
      (fg-line-number-active fg-main)
      (bg-line-number-inactive unspecified)
      (bg-line-number-active unspecified)

;;;; Link mappings

      (fg-link blue-warmer)
      (bg-link unspecified)
      (underline-link blue-warmer)

      (fg-link-visited magenta)
      (bg-link-visited unspecified)
      (underline-link-visited magenta)

;;;; Mail mappings

      (mail-0 magenta)
      (mail-1 cyan-cooler)
      (mail-2 yellow-cooler)
      (mail-3 red-warmer)
      (mail-4 blue-warmer)
      (mail-recipient blue)
      (mail-subject magenta-cooler)
      (mail-other cyan)

;;;; Rainbow mappings

      (rainbow-0 "#191970")
      (rainbow-1 blue-cooler)
      (rainbow-2 yellow-cooler)
      (rainbow-3 magenta-cooler)
      (rainbow-4 red-faint)
      (rainbow-5 green-warmer)
      (rainbow-6 cyan-cooler)
      (rainbow-7 blue-faint)
      (rainbow-8 magenta-warmer)

;;;; Space mappings

      (bg-space unspecified)
      (fg-space border)
      (bg-space-err bg-red-intense)

;;;; Prose mappings

      (prose-code cyan-cooler)
      (prose-macro green-warmer)
      (prose-verbatim magenta)

;;;; Heading mappings

      (fg-heading-0 rainbow-0)
      (fg-heading-1 rainbow-1)
      (fg-heading-2 rainbow-2)
      (fg-heading-3 rainbow-3)
      (fg-heading-4 rainbow-4)
      (fg-heading-5 rainbow-5)
      (fg-heading-6 rainbow-6)
      (fg-heading-7 rainbow-7)
      (fg-heading-8 rainbow-8)

      (bg-heading-0 unspecified)
      (bg-heading-1 unspecified)
      (bg-heading-2 unspecified)
      (bg-heading-3 unspecified)
      (bg-heading-4 unspecified)
      (bg-heading-5 unspecified)
      (bg-heading-6 unspecified)
      (bg-heading-7 unspecified)
      (bg-heading-8 unspecified)

      (overline-heading-0 unspecified)
      (overline-heading-1 unspecified)
      (overline-heading-2 unspecified)
      (overline-heading-3 unspecified)
      (overline-heading-4 unspecified)
      (overline-heading-5 unspecified)
      (overline-heading-6 unspecified)
      (overline-heading-7 unspecified)
      (overline-heading-8 unspecified))
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

  (standard-themes-theme standard-light
                         standard-light-palette
                         standard-light-palette-overrides)

  (provide-theme 'standard-light))

;;; standard-light-theme.el ends here
