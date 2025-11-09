;;; standard-dark-tinted-theme.el --- Night sky variant of standard-dark theme -*- lexical-binding:t -*-

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

(defconst standard-dark-tinted-palette
  (append
   '(
;;; Basic values

     (bg-main     "#182440")
     (fg-main     "#ffffff")
     (bg-dim      "#2e3355")
     (fg-dim      "#a6a6a6")
     (bg-alt      "#3f4560")
     (fg-alt      "#ac90e0")
     (bg-active   "#5f6580")
     (bg-inactive "#203348")
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
     (bg-added-refine   "#17623f")
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

     (bg-completion "#406a70")
     (bg-hover      "#35705f")
     (bg-hover-alt  "#00688b")
     (bg-hl-line    "#304845")
     (bg-region     "#4f2f99")
     (bg-paren-match "#4f94cd")
     (bg-err        "#5f1f1f") ; check with err
     (bg-warning    "#434100") ; check with warning
     (bg-info       "#20481f") ; check with info

     (bg-mode-line-active        "#5b59b2")
     (fg-mode-line-active        "#ffffff")
     (border-mode-line-active    "#9595b5")
     (bg-mode-line-inactive      "#353a52")
     (fg-mode-line-inactive      "#a6a6a6")
     (border-mode-line-inactive  "#606070")

     (modeline-err     "#ff80af")
     (modeline-warning "#dfcf33")
     (modeline-info    "#2fc82f")

     (underline-err     "#df2f2f")
     (underline-warning "#c0b000")
     (underline-info    "#22b022")

;;; Mappings

;;;; General mappings

     (cursor "#d072f0")

     (name cyan-cooler)
     (keybind blue-cooler)

     (err red)
     (warning yellow-warmer)
     (info green)

;;;; Prompt mappings

     (fg-prompt cyan)

;;;; Code mappings

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
     (rx-escape green) ; compare with `string'
     (rx-construct fg-main)

;;;; Accent mappings

     (accent-0 blue-warmer)
     (accent-1 red-cooler)
     (accent-2 green)
     (accent-3 magenta-cooler)

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

     (rainbow-0 "#afeeee"))
   standard-themes-common-palette-mappings)
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

(modus-themes-theme
 'standard-dark-tinted
 'standard-themes
 "Night sky variant of standard-dark theme."
 'dark
 'modus-vivendi-tinted-palette
 'standard-dark-tinted-palette
 'standard-dark-tinted-palette-overrides
 'standard-themes-custom-faces)

;;; standard-dark-tinted-theme.el ends here
