#lang codespells

(require chess/mod-info)

(define-classic-rune (board)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (spawn-mod-blueprint pak-folder mod-name "Board"))

(define-classic-rune (dark-queen)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (spawn-mod-blueprint pak-folder mod-name "DarkQueen"))

(define-classic-rune (dark-king)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (spawn-mod-blueprint pak-folder mod-name "DarkKing"))

(define-classic-rune (dark-bishop)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (spawn-mod-blueprint pak-folder mod-name "DarkBishop"))

(define-classic-rune (dark-knight)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  
  (spawn-mod-blueprint pak-folder mod-name "DarkKnight"))

(define-classic-rune (dark-rook)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (spawn-mod-blueprint pak-folder mod-name "DarkRook"))

(define-classic-rune (dark-pawn)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (spawn-mod-blueprint pak-folder mod-name "DarkPawn"))

(define-classic-rune (light-queen)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (spawn-mod-blueprint pak-folder mod-name "LightQueen"))

(define-classic-rune (light-king)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (spawn-mod-blueprint pak-folder mod-name "LightKing"))

(define-classic-rune (light-bishop)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (spawn-mod-blueprint pak-folder mod-name "LightBishop"))

(define-classic-rune (light-knight)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (spawn-mod-blueprint pak-folder mod-name "LightKnight"))

(define-classic-rune (light-rook)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (spawn-mod-blueprint pak-folder mod-name "LightRook"))

(define-classic-rune (light-pawn)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (spawn-mod-blueprint pak-folder mod-name "LightPawn"))

(define-classic-rune-lang my-mod-lang #:eval-from main.rkt
  (dark-queen
   dark-king
   dark-bishop
   dark-knight
   dark-rook
   dark-pawn

   light-queen
   light-king
   light-bishop
   light-knight
   light-rook
   light-pawn

   board))

(module+ main
  (codespells-workspace
   (build-path (current-directory) ".." ".." "CodeSpellsWorkspace"))
  
  (once-upon-a-time
   #:world (arena-world)
   #:aether (demo-aether
             #:lang (my-mod-lang #:with-paren-runes? #t))))


