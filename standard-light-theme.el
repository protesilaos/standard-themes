;;; standard-light-theme.el --- Like the unthemed light Emacs, but more consistent -*- lexical-binding:t -*-

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

  (deftheme standard-light
    "Like the unthemed light Emacs, but more consistent."
    :background-mode 'light
    :kind 'color-scheme
    :family 'standard)

  (defconst standard-light-palette
    '(;; Basic tones
      (bg-main     "#ffffff")
      (fg-main     "#000000")
      (bg-dim      "#ededed")
      (fg-dim      "#7f7f7f")
      (bg-alt      "#e5e5e5")
      (fg-alt      "#193f8f")

      (bg-active   "#bfbfbf")
      (bg-inactive "#f5f5f5")

      ;; Basic hues for foreground values
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

      ;; Basic hues for background values
      (bg-red      "#ff8f88")
      (bg-green    "#7ae070")
      (bg-yellow   "#fac200")
      (bg-blue     "#6bcfff")
      (bg-magenta  "#cf9fff")
      (bg-cyan     "#a8efff")

      ;; Diffs
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

      ;; Marks
      (bg-mark-alt  "#ffeabb") (fg-mark-alt  "#a45822")
      (bg-mark-del  "#ffd5ea") (fg-mark-del  "#b32230")
      (bg-mark-sel  "#c0effa") (fg-mark-sel  "#1f6fb0")

      ;; Graphs
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

      ;; Special hues
      (bg-mode-line  "#b3b3b3")  (fg-mode-line  "#000000")
      (bg-accent     "#0000cc")
      (bg-completion "#bfe8ff")
      (bg-hover      "#aaeccf")
      (bg-hover-alt  "#ffff00")
      (bg-hl-line    "#b4eeb4")
      (bg-region     "#eedc82")
      (bg-paren      "#40e0d0")
      (bg-err        "#ffd5ea") ; check with err
      (bg-warning    "#ffeabb") ; check with warning
      (bg-info       "#d0efda") ; check with info

      (border        "#bababa")
      (cursor        "#000000")

      (bg-tab              "#d9d9d9")
      (bg-tab-inactive     "#bfbfbf")
      (bg-tab-inactive-alt "#a6a6a6")

      (modeline-err     "#b02020")
      (modeline-warning "#5f1080")
      (modeline-info    "#002fb0")

      (underline-err     "#ef0f1f")
      (underline-warning "#bf5f00")
      (underline-info    "#02af52")

      ;; Conditional hues
      (bg-prompt           "#9bbfdf")
      (bg-region-intense   "#eeb422")
      (bg-mode-line-accent "#9fbaff")

      ;; Mappings
      (err red-warmer)
      (warning yellow-warmer)
      (info green)

      (link blue-warmer)
      (link-alt magenta)
      (link-faint blue-faint)
      (link-alt-faint magenta-faint)
      (date cyan-warmer)
      (name green-cooler)
      (keybind blue)
      (prompt blue-cooler)

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

      (accent-0 blue)
      (accent-1 red-cooler)
      (accent-2 green)
      (accent-3 magenta-cooler)

      (mail-0 magenta-warmer)
      (mail-1 blue-warmer)
      (mail-2 green-cooler)
      (mail-3 yellow)
      (mail-4 blue)
      (mail-5 cyan)

      (rainbow-0 "#191970")
      (rainbow-1 blue-cooler)
      (rainbow-2 yellow-cooler)
      (rainbow-3 magenta-cooler)
      (rainbow-4 red-faint)
      (rainbow-5 green-warmer)
      (rainbow-6 cyan-cooler)
      (rainbow-7 blue-faint)
      (rainbow-8 magenta-warmer)

      (prose-code cyan-cooler)
      (prose-macro green-warmer)
      (prose-verbatim magenta))
    "The `standard-light' palette.")

  (standard-themes-theme standard-light standard-light-palette)

  (provide-theme 'standard-light))

;;; standard-light-theme.el ends here
