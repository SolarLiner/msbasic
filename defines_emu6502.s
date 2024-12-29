.import CHRIN, CHROUT
; configuration
CONFIG_2A := 1
CONFIG_SCRTCH_ORDER := 2
CONFIG_NO_CR := 1
;
;; zero page
ZP_START1 = $10
ZP_START2 = $20
ZP_START3 = $60
ZP_START4 = $6B
;
USR             := GORESTART
;
;; constants
SPACE_FOR_GOSUB := $3E
STACK_TOP       := $FA
WIDTH           := 40
WIDTH2          := 30
;
RAMSTART2       := $0400
;; monitor functions
MONCOUT  := CHROUT
;

.code
MONRDKEY:
    stx DIMFLG
    jsr CHRIN
    bcc @end
    jsr CHROUT
    ldx DIMFLG
@end:
LOAD:
SAVE:
    rts
