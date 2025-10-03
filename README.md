# Standard themes for GNU Emacs

The `standard-themes` are a collection of light and dark themes for
GNU Emacs. The `standard-light` and `standard-dark` emulate the
out-of-the-box looks of Emacs (which technically do NOT constitute a
theme) while bringing to them thematic consistency, customizability,
and extensibility. Other themes are stylistic variations of those.

Why call them "standard"? Obviously because: Standard Themes Are Not
Derivatives but the Affectionately Reimagined Default ... themes.

Starting with version `3.0.0`, the `standard-themes` are built on top of the
`modus-themes`. This means that all customisation options of the Modus
themes apply to the Standard themes. Same for all Modus commands that load a
theme. Enable `standard-themes-take-over-modus-themes-mode` to set up this
arrangement (or enable `modus-themes-include-derivatives-mode` instead
to blend Standard and Modus into one collection).

+ Package name (GNU ELPA): `standard-themes`
+ Official manual: <https://protesilaos.com/emacs/standard-themes>
+ Change log: <https://protesilaos.com/emacs/standard-themes-changelog>
+ Sample pictures: <https://protesilaos.com/emacs/standard-themes-pictures>
+ Git repositories:
  + GitHub: <https://github.com/protesilaos/standard-themes>
  + GitLab: <https://gitlab.com/protesilaos/standard-themes>
+ Backronym: Standard Themes Are Not Derivatives but the
  Affectionately Reimagined Default ... themes.

```elisp
(use-package standard-themes
  :ensure t
  :init
  ;; This makes the Modus commands listed below consider only the
  ;; Standard themes.  For an alternative that includes Modus and all
  ;; derivative themes (like Standard), enable the
  ;; `modus-themes-include-derivatives-mode' instead.
  (standard-themes-take-over-modus-themes-mode 1)
  :bind
  (("<f5>" . modus-themes-rotate)
   ("C-<f5>" . modus-themes-select)
   ("M-<f5>" . modus-themes-load-random))
  :config
  ;; All customisations here.
  (setq modus-themes-mixed-fonts t)
  (setq modus-themes-italic-constructs t)

  ;; Finally, load your theme of choice.
  (modus-themes-load-theme 'standard-light-tinted))
```
