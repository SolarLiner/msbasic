ISCNTC:
    jsr MONRDKEY
    bcs @haskey
    rts                             ; No key, return from subroutine

@haskey:
    cmp #3                          ; Check against ETX
    beq @fallthrough
    rts                             ; Not ETX, return from subroutine

@fallthrough:
    ; Falls through to the STOP routine