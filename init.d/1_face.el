(cond ((eq window-system 'w32)
       (progn (set-face-attribute 'default nil
                                  :background "grey14"
                                  :foreground "white"
                                  )
              (set-face-attribute 'mode-line nil
                                  :background "grey30"
                                  :foreground "grey80"
                                  )

              (set-face-attribute 'cursor nil
                                  :background "lightblue"
                                  :foreground "black"
                                  )))
      ((eq window-system 'x)
       (progn (set-face-attribute 'default nil
                                  :font "DejaVu Sans Mono"
                                  :background "grey14"
                                  :foreground "white"
                                  )
              (set-face-attribute 'mode-line nil
                                  :background "grey30"
                                  :foreground "grey80"
                                  )

              (set-face-attribute 'cursor nil
                                  :background "lightblue"
                                  :foreground "black"
                                  )))
       ((eq window-system nil)
        (progn (set-face-attribute 'default nil
                                   :background "grey14"
                                   :foreground "white"
                                   ))))

