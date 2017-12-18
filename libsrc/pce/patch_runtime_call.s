;
; Ullrich von Bassewitz, 06.08.1998
; KanedaFr, 11.12.2017 - PCE way
;
; CC65 runtime: call function via pointer in ax
; unlike common runtime, PCEngine call use RAM not ZeroPage
;

        .export         callax

.segment	"BSS"

callPtr:
	.res	2,$00
	
	
.segment	"CODE"

callax: sta     callPtr
        stx     callPtr+1
        jmp     (callPtr)          ; jump there
