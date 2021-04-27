;;; bindings.el -*- lexical-binding: t; -*-

(map! :nv "k" 'evil-insert
      :nv "K" 'evil-insert-line
      :nv "l" 'evil-open-below
      :nv "L" 'evil-open-above
      :nv "f" 'evil-ex-search-next
      :nv "F" 'evil-ex-search-previous
      :nv "n" 'evil-backward-char
      :nv "e" 'evil-next-line
      :nv "E" 'evil-join
      :nv "i" 'evil-previous-line
      :nv "o" 'evil-forward-char
      :nv "j" 'evil-forward-word-end
      :nv "J" 'evil-forward-WORD-end
      )

;; rebind movement for colemak
(define-prefix-command 'my-evil-window-map)

(let ((wmap evil-window-map)
      (vmap evil-visual-state-map))
  (define-key wmap "h" nil)
  (define-key wmap "j" nil)
  (define-key wmap "k" nil)
  (define-key wmap "l" nil)
  (define-key wmap "H" nil)
  (define-key wmap "J" nil)
  (define-key wmap "K" nil)
  (define-key wmap "L" nil)
  (define-key wmap "n" nil)
  (define-key wmap "e" nil)
  (define-key wmap "i" nil)
  (define-key wmap "o" nil)
  (define-key wmap "N" nil)
  (define-key wmap "E" nil)
  (define-key wmap "I" nil)
  (define-key wmap "O" nil)

  (define-key wmap "h" 'evil-window-new)
  (define-key wmap "l" 'doom/window-enlargen)
  (define-key wmap "n" 'evil-window-left)
  (define-key wmap "e" 'evil-window-down)
  (define-key wmap "i" 'evil-window-up)
  (define-key wmap "o" 'evil-window-right)

  (define-key wmap "N" 'evil-window-move-far-left)
  (define-key wmap "E" 'evil-window-move-very-bottom)
  (define-key wmap "I" 'evil-window-move-very-top)
  (define-key wmap "O" 'evil-window-move-far-right))

(define-key evil-normal-state-map " w" 'my-evil-window-map)
