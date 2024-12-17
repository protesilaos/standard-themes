;;; standard-dark-tinted-theme.el --- More nightly variant of standard-dark theme -*- lexical-binding:t -*-

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



(eval-and-compile
  (require 'standard-themes)

;;;###theme-autoload
  (deftheme standard-dark-tinted
    "More nightly variant of standard-dark theme."
    :background-mode 'dark
    :kind 'color-scheme
    :family 'standard)

  (defconst standard-dark-tinted-palette
    '(
;;; Basic values

      (bg-main     "#182440")
      (fg-main     "#ffffff")
      (bg-dim      "#2e3355")
      (fg-dim      "#a6a6a6")
      (bg-alt      "#3f4560")
      (fg-alt      "#a0afef")
      (bg-active   "#5f6580")
      (bg-inactive "#252844")
      (border      "#707090")

;; Basic accent foregrounds

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

;;; Common accent backgrounds

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

;;; Diffs

      (bg-added          "#12522f")
      (bg-added-faint    "#0f3a30")
      (bg-added-refine   "#13694f")
      (fg-added          "#4fb04f")

      (bg-changed        "#424200")
      (bg-changed-faint  "#383a00")
      (bg-changed-refine "#684f20")
      (fg-changed        "#e0cf03")

      (bg-removed        "#602119")
      (bg-removed-faint  "#4e0f1f")
      (bg-removed-refine "#792f2f")
      (fg-removed        "#ff5f5f")

;;; Marks

      (bg-mark-alt  "#223f6a")
      (fg-mark-alt  "#57defa")

      (bg-mark-del  "#5a201f")
      (fg-mark-del  "#ff7f60")

      (bg-mark-sel  "#494000")
      (fg-mark-sel  "#d0d082")

;;; Graphs

      (red-graph-0-bg     "#b52c2c")
      (red-graph-1-bg     "#702020")
      (green-graph-0-bg   "#4fd100")
      (green-graph-1-bg   "#007800")
      (yellow-graph-0-bg  "#f1e00a")
      (yellow-graph-1-bg  "#b08600")
      (blue-graph-0-bg    "#2fafef")
      (blue-graph-1-bg    "#1f2f8f")
      (magenta-graph-0-bg "#bf94fe")
      (magenta-graph-1-bg "#5f509f")
      (cyan-graph-0-bg    "#47dfea")
      (cyan-graph-1-bg    "#00808f")

;;; Special hues

      (bg-accent     "#ffc200")
      (bg-completion "#406a70")
      (bg-hover      "#35705f")
      (bg-hover-alt  "#00688b")
      (bg-hl-line    "#304845")
      (bg-region     "#4f2f99")
      (fg-region     unspecified)
      (bg-paren      "#4f94cd")
      (bg-err        "#5f1f1f") ; check with err
      (bg-warning    "#434100") ; check with warning
      (bg-info       "#20481f") ; check with info

      (bg-mode-line-active        "#5b59b2")
      (fg-mode-line-active        "#ffffff")
      (border-mode-line-active    "#9595b5")
      (bg-mode-line-inactive      "#353a52")
      (fg-mode-line-inactive      "#a6a6a6")
      (border-mode-line-inactive  "#606070")

      (bg-tab              "#374073")
      (bg-tab-inactive     "#545f90")
      (bg-tab-inactive-alt "#6a7898")

      (modeline-err     "#ff80af")
      (modeline-warning "#dfcf33")
      (modeline-info    "#2fc82f")

      (underline-err     "#df2f2f")
      (underline-warning "#c0b000")
      (underline-info    "#22b022")

;;; Mappings

;;;; General mappings

      (cursor "#d072f0")
      (fringe bg-dim)
      (name cyan-cooler)
      (keybind blue-cooler)

      (err red)
      (warning yellow-warmer)
      (info green)

;;;; Date mappings

      (date-common cyan-warmer)
      (date-deadline red)
      (date-event fg-alt)
      (date-holiday red-cooler)
      (date-now fg-main)
      (date-range fg-alt)
      (date-scheduled green-cooler)
      (date-weekday cyan-warmer)
      (date-weekend red)

;;;; Prompt mappings

      (bg-prompt unspecified)
      (fg-prompt cyan)

;;;; Code mappings

      (builtin blue-faint)
      (comment red-warmer)
      (constant cyan-cooler)
      (fnname cyan-warmer)
      (keyword cyan)
      (preprocessor blue-faint)
      (docstring yellow-cooler)
      (string yellow-cooler)
      (type green-cooler)
      (variable yellow)
      (rx-escape green) ; compare with `string'
      (rx-construct fg-main)

;;;; Accent mappings

      (accent-0 blue-warmer)
      (accent-1 red-cooler)
      (accent-2 green)
      (accent-3 magenta-cooler)

;;;; Line number mappings

      (fg-line-number-inactive fg-dim)
      (fg-line-number-active fg-main)
      (bg-line-number-inactive unspecified)
      (bg-line-number-active unspecified)

;;;; Link mappings

      (fg-link cyan)
      (bg-link unspecified)
      (underline-link blue-warmer)

      (fg-link-visited magenta-cooler)
      (bg-link-visited unspecified)
      (underline-link-visited magenta)

;;;; Mail mappings

      (mail-0 magenta-warmer)
      (mail-1 cyan-cooler)
      (mail-2 yellow)
      (mail-3 red)
      (mail-4 blue-warmer)
      (mail-recipient blue)
      (mail-subject magenta-cooler)
      (mail-other cyan)

;;;; Rainbow mappings

      (rainbow-0 "#afeeee")
      (rainbow-1 cyan-warmer)
      (rainbow-2 yellow)
      (rainbow-3 cyan)
      (rainbow-4 red-warmer)
      (rainbow-5 green-cooler)
      (rainbow-6 cyan-cooler)
      (rainbow-7 blue-faint)
      (rainbow-8 yellow-cooler)

;;;; Space mappings

      (bg-space unspecified)
      (fg-space border)
      (bg-space-err bg-red-intense)

;;;; Prose mappings

      (prose-code cyan-cooler)
      (prose-macro green-warmer)
      (prose-verbatim magenta-warmer)

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
    "The `standard-dark-tinted' palette.
Color values have the form (COLOR-NAME HEX-VALUE) with the former
as a symbol and the latter as a string.

Semantic color mappings have the form (MAPPING-NAME COLOR-NAME)
with both as symbols.  The latter is a color that already exists
in the palette and is associated with a HEX-VALUE.")

  (defcustom standard-dark-tinted-palette-overrides nil
    "Overrides for `standard-dark-tinted-palette'.

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

  (standard-themes-theme standard-dark-tinted
                         standard-dark-tinted-palette
                         standard-dark-tinted-palette-overrides)

  (provide-theme 'standard-dark-tinted))

;;; standard-dark-tinted-theme.el ends here
