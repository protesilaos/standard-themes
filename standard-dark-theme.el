;;; standard-dark-theme.el --- Like the unthemed dark Emacs, but more consistent -*- lexical-binding:t -*-

;; Copyright (C) 2022  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Maintainer: Standard-Themes Development <~protesilaos/standard-themes@lists.sr.ht>
;; URL: https://git.sr.ht/~protesilaos/standard-themes
;; Mailing-List: https://lists.sr.ht/~protesilaos/standard-themes
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

;;; Code:



(eval-and-compile
  (require 'standard-themes)

  (deftheme standard-dark
    "Like the unthemed dark Emacs, but more consistent."
    :background-mode 'dark
    :kind 'color-scheme
    :family 'standard)

  (defconst standard-dark-palette
    '(;; Basic tones
      (bg-main     "#000000")
      (fg-main     "#ffffff")
      (bg-dim      "#202020")
      (fg-dim      "#a6a6a6")
      (bg-alt      "#363636")
      (fg-alt      "#a0afef")

      (bg-active   "#606060")
      (bg-inactive "#141414")

      ;; Basic hues for foreground values
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

      ;; Basic hues for background values
      (bg-red      "#cd2f30")
      (bg-green    "#408420")
      (bg-yellow   "#8f5040")
      (bg-blue     "#4648d0")
      (bg-magenta  "#a050cf")
      (bg-cyan     "#2270be")

      ;; Diffs
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

      ;; Marks
      (bg-mark-alt  "#002f4a") (fg-mark-alt  "#57cefa")
      (bg-mark-del  "#440d09") (fg-mark-del  "#ff5f60")
      (bg-mark-sel  "#333000") (fg-mark-sel  "#d0d082")

      ;; Graphs
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

      ;; Special hues
      (bg-mode-line  "#505050") (bg-mode-line-inactive "#323232")
      (bg-accent     "#ffc200")
      (bg-completion "#254b5f")
      (bg-hover      "#457b2f")
      (bg-hover-alt  "#00688b")
      (bg-hl-line    "#556b2f")
      (bg-region     "#0000cd")
      (bg-paren      "#4f94cd")
      (bg-err        "#3f0d09") ; check with err
      (bg-warning    "#362f00") ; check with warning
      (bg-info       "#002f12") ; check with info

      (border        "#606070")
      (cursor        "#ffffff")

      (bg-tab              "#333333")
      (bg-tab-inactive     "#4d4d4d")
      (bg-tab-inactive-alt "#666666")

      (modeline-err     "#ff80af")
      (modeline-warning "#dfcf33")
      (modeline-info    "#2fc82f")

      (underline-err     "#df2f2f")
      (underline-warning "#c0b000")
      (underline-info    "#22b022")

      ;; Conditional hues
      (bg-prompt           "#483f73")
      (bg-region-intense   "#9f3047")
      (bg-mode-line-accent "#173780")

      ;; Mappings
      (err red)
      (warning yellow-warmer)
      (info green)

      (link cyan)
      (link-alt magenta-cooler)
      (link-faint cyan-faint)
      (link-alt-faint magenta-faint)
      (date cyan-warmer)
      (name cyan-cooler)
      (keybind blue-cooler)
      (prompt blue)

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

      (accent-0 blue-warmer)
      (accent-1 red-cooler)
      (accent-2 green)
      (accent-3 magenta-cooler)

      (mail-0 blue-warmer)
      (mail-1 magenta-warmer)
      (mail-2 green-cooler)
      (mail-3 yellow-warmer)
      (mail-4 blue-cooler)
      (mail-5 cyan)

      (rainbow-0 "#afeeee")
      (rainbow-1 cyan-warmer)
      (rainbow-2 yellow)
      (rainbow-3 cyan)
      (rainbow-4 red-warmer)
      (rainbow-5 green-cooler)
      (rainbow-6 cyan-cooler)
      (rainbow-7 blue-faint)
      (rainbow-8 yellow-cooler)

      (prose-code cyan-cooler)
      (prose-macro green-warmer)
      (prose-verbatim magenta-warmer))
    "The `standard-dark' palette.")

  (standard-themes-theme standard-dark standard-dark-palette)

  (provide-theme 'standard-dark))

;;; standard-dark-theme.el ends here
