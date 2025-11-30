;;; standard-themes.el --- Like the default theme but more consistent -*- lexical-binding:t -*-

;; Copyright (C) 2022-2025  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Maintainer: Protesilaos Stavrou <info@protesilaos.com>
;; URL: https://github.com/protesilaos/standard-themes
;; Version: 3.0.2
;; Package-Requires: ((emacs "28.1") (modus-themes "5.0.0"))
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



(require 'modus-themes)
(eval-when-compile (require 'subr-x))

;;;; Basics for building on top of Modus

(defgroup standard-themes ()
  "Like the default Emacs themes but more consistent and customizable.
The `standard-themes' are built on top of the `modus-themes'.  To make
all the Modus commands that operate on a theme only consider Standard
themes, enable the `standard-themes-take-over-modus-themes-mode'.  Or,
if you prefer to blend Standard and Modus into a single group, enable
`modus-themes-include-derivatives-mode'."
  :group 'faces
  :group 'modus-themes
  :link '(info-link "(standard-themes) Top")
  :link '(info-link "(modus-themes) Top")
  :prefix "standard-themes-"
  :tag "Standard Themes")

(defconst standard-themes-light-themes
  '(standard-light standard-light-tinted)
  "List of symbols with the light Standard themes.")

(defconst standard-themes-dark-themes
  '(standard-dark standard-dark-tinted)
  "List of symbols with the dark Standard themes.")

(defvaralias 'standard-themes-collection 'standard-themes-items
  "Alias of `standard-themes-items'.")

(defconst standard-themes-items
  (append standard-themes-light-themes standard-themes-dark-themes)
  "Symbols of the Standard themes.")

(defconst standard-themes-common-palette-mappings
  '((bg-diff-context bg-dim)

    (fg-region unspecified)

    (fringe bg-dim)

    (docmarkup constant)
    (property variable)

    (date-common cyan-warmer)
    (date-deadline red)
    (date-event fg-alt)
    (date-holiday red-cooler)
    (date-now fg-main)
    (date-range fg-alt)
    (date-scheduled red-cooler)
    (date-weekday cyan-warmer)
    (date-weekend red)

    (bg-prompt unspecified)

    (fg-line-number-inactive fg-dim)
    (fg-line-number-active fg-main)
    (bg-line-number-inactive unspecified)
    (bg-line-number-active unspecified)

    (fg-completion-match-0 red-warmer)
    (fg-completion-match-1 cyan)
    (fg-completion-match-2 green-cooler)
    (fg-completion-match-3 magenta-cooler)

    (rainbow-1 blue-cooler)
    (rainbow-2 yellow-cooler)
    (rainbow-3 magenta-cooler)
    (rainbow-4 red-faint)
    (rainbow-5 green-warmer)
    (rainbow-6 cyan-cooler)
    (rainbow-7 blue-faint)
    (rainbow-8 magenta-warmer)

    (bg-tab-bar bg-alt)
    (bg-tab-current bg-main)
    (bg-tab-other bg-active)

    (bg-space unspecified)
    (fg-space border)
    (bg-space-err bg-red-intense)

    (bg-search-current bg-magenta-intense)
    (bg-search-lazy bg-cyan-intense)
    (bg-search-static bg-yellow-subtle)
    (bg-search-replace bg-red-intense)

    (fg-search-current fg-main)
    (fg-search-lazy fg-main)
    (fg-search-static fg-main)
    (fg-search-replace fg-main)

    (bg-search-rx-group-0 bg-blue-intense)
    (bg-search-rx-group-1 bg-yellow-intense)
    (bg-search-rx-group-2 bg-green-subtle)
    (bg-search-rx-group-3 bg-magenta-subtle)

    (fg-search-rx-group-0 fg-main)
    (fg-search-rx-group-1 fg-main)
    (fg-search-rx-group-2 fg-main)
    (fg-search-rx-group-3 fg-main)

    (fg-prose-code cyan-cooler)
    (fg-prose-macro green-warmer)
    (fg-prose-verbatim magenta-warmer)

    (fg-heading-0 rainbow-0)
    (fg-heading-1 rainbow-1)
    (fg-heading-2 rainbow-2)
    (fg-heading-3 rainbow-3)
    (fg-heading-4 rainbow-4)
    (fg-heading-5 rainbow-5)
    (fg-heading-6 rainbow-6)
    (fg-heading-7 rainbow-7)
    (fg-heading-8 rainbow-8))
  "Common palette mappings for the Standard themes.")

(defconst standard-themes-custom-faces
  '(
    `(company-tooltip ((,c :background ,bg-alt)))
    `(corfu-default ((,c :background ,bg-alt)))
    `(magit-section-highlight ((,c :background ,bg-alt)))
    `(magit-diff-file-heading-highlight ((,c :inherit magit-diff-file-heading :background ,bg-alt)))
    `(mode-line
      ((default :inherit modus-themes-ui-variable-pitch
                :background ,bg-mode-line-active
                :foreground ,fg-mode-line-active)
       (((supports :box t))
        ,@(modus-themes--box border-mode-line-active nil 'released-button))
       (t :underline ,border-mode-line-active)))
    `(mode-line-active
      ((default :inherit modus-themes-ui-variable-pitch
                :background ,bg-mode-line-active
                :foreground ,fg-mode-line-active)
       (((supports :box t))
        ,@(modus-themes--box border-mode-line-active nil 'released-button))
       (t :underline ,border-mode-line-active)))))

(defconst standard-themes-with-properties
  '((standard-light standard-themes "Like the unthemed light Emacs, but more consistent." light modus-operandi-palette standard-light-palette standard-light-palette-overrides)
    (standard-light-tinted standard-themes "Light ochre variant of the standard-light theme." light modus-operandi-tinted-palette standard-light-tinted-palette standard-light-tinted-palette-overrides)
    (standard-dark standard-themes "Like the unthemed dark Emacs, but more consistent." dark modus-vivendi-palette standard-dark-palette standard-dark-palette-overrides)
    (standard-dark-tinted standard-themes "Night sky variant of standard-dark theme." dark modus-vivendi-tinted-palette standard-dark-tinted-palette standard-dark-tinted-palette-overrides)))

(defvar standard-themes--declared-p nil)

(defun standard-themes-declare-themes ()
  "Declare the Standard themes."
  (unless standard-themes--declared-p
    (dolist (theme standard-themes-with-properties)
      (apply #'modus-themes-declare theme)
      (modus-themes-register (car theme)))
    (setq standard-themes--declared-p t)))

(standard-themes-declare-themes)

;;;; Compatibility with older versions of the Standard themes

(defvar standard-themes--aliased-p nil)

(defun standard-themes-define-alias (prefix suffix &optional is-function)
  "Make alias for the Modus themes symbol with PREFIX and SUFFIX.
If IS-FUNCTION is non-nil, use the appropriate calls for functions, else
assume this is a variable."
  (let ((our-symbol (intern (format "%s-%s" prefix suffix)))
        (modus-symbol (intern-soft (format "modus-themes-%s" suffix))))
    (when (symbolp modus-symbol)
      (funcall
       (if is-function
           #'defalias
         #'defvaralias)
       our-symbol
       modus-symbol
       (format "`%s' is an alias for `%s'.
Since version 3.0.0, `standard-themes' derive from the `modus-themes'.
You can configure the `standard-themes' via the user options of the
`modus-themes'.

To make all the Modus commands that operate on a theme consider only
Standard themes, enable `standard-themes-take-over-modus-themes-mode'.
Or, if you prefer to blend Standard and Modus into a single group,
enable `modus-themes-include-derivatives-mode' instead.

Alternatively, use the commands `standard-themes-rotate',
`standard-themes-select', `standard-themes-load-random',
`standard-themes-load-random-dark', `standard-themes-load-random-light',
`standard-themes-list-colors', `standard-themes-list-colors-current'.
They are all designed to only consider Standard themes." our-symbol modus-symbol)))))

(defun standard-themes-define-option-aliases ()
  "Define aliases for the user options of the Modus themes."
  (unless standard-themes--aliased-p
    (dolist (suffix '( disable-other-themes to-toggle to-rotate after-load-theme-hook
                       italic-constructs bold-constructs variable-pitch-ui mixed-fonts
                       headings completions prompts common-palette-overrides))
      (standard-themes-define-alias "standard-themes" suffix))
    (setq standard-themes--aliased-p t)))

(standard-themes-define-option-aliases)

(defalias 'standard-themes-load-theme 'modus-themes-load-theme
  "Alias for `modus-themes-load-theme.")

(defalias 'standard-themes-with-colors 'modus-themes-with-colors
  "Alias for `modus-themes-with-colors.")

;;;; Limit the Modus themes to only Standard themes

;;;###autoload
(define-minor-mode standard-themes-take-over-modus-themes-mode
  "When enabled, all Modus themes commands consider only Standard themes.
Alternatively, use the commands `standard-themes-rotate',
`standard-themes-select', `standard-themes-load-random',
`standard-themes-load-random-dark', `standard-themes-load-random-light',
`standard-themes-list-colors', `standard-themes-list-colors-current'.
They are all designed to only consider Standard themes."
  :global t
  :init-value nil)

(cl-defmethod modus-themes-get-themes (&context (standard-themes-take-over-modus-themes-mode (eql t)))
  "Return Standard themes per `standard-themes-take-over-modus-themes-mode'."
  (if-let* ((themes (modus-themes-get-all-known-themes 'standard-themes))
            (sorted-a-z (sort themes #'string-lessp))
            (sorted-light-dark (modus-themes-sort sorted-a-z 'light)))
      sorted-light-dark
    standard-themes-items))

;;;; Convenience commands

;;;###autoload (autoload 'standard-themes-toggle "standard-themes")
(modus-themes-define-derivative-command standard-themes toggle)

;;;###autoload (autoload 'standard-themes-rotate "standard-themes")
(modus-themes-define-derivative-command standard-themes rotate)

;;;###autoload (autoload 'standard-themes-select "standard-themes")
(modus-themes-define-derivative-command standard-themes select)

;;;###autoload (autoload 'standard-themes-load-random "standard-themes")
(modus-themes-define-derivative-command standard-themes load-random)

;;;###autoload (autoload 'standard-themes-load-random-dark "standard-themes")
(modus-themes-define-derivative-command standard-themes load-random-dark)

;;;###autoload (autoload 'standard-themes-load-random-light "standard-themes")
(modus-themes-define-derivative-command standard-themes load-random-light)

;;;###autoload (autoload 'standard-themes-list-colors "standard-themes")
(modus-themes-define-derivative-command standard-themes list-colors)

;;;###autoload (autoload 'standard-themes-list-colors-current "standard-themes")
(modus-themes-define-derivative-command standard-themes list-colors-current)

;;;; Add themes from the package to the load path

;;;###autoload
(when load-file-name
  (let ((dir (file-name-directory load-file-name)))
    (unless (file-equal-p dir (expand-file-name "themes/" data-directory))
      (add-to-list 'custom-theme-load-path dir))))

(provide 'standard-themes)
;;; standard-themes.el ends here
