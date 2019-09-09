
   ;INCLUIR UN ARCHIVO DE CABECERA
   .include "p33FJ32GP202.inc"
   .global _main
   ;DENTRO DEL MAIN ,ESTABLECER LA CONFIGURACIÓN
   _main:
    BCLR TRISB,#0xA
    BCLR TRISB,#0xB
    MOV #0x0000,W0
    MOV W0,PORTB
   _bucle:
    BSET LATB,#0xA
    BCLR LATB,#0xB
    CALL DELAY1S
    BCLR LATB,#0xA
    BSET LATB,#0xB
    CALL DELAY1S
    GOTO _bucle
   DELAY1S:
    MOV #1000,W0
   REPETIR:
    DEC W0,W1
    MOV W1,W0
    BRA Z,RETORNAR
    REPEAT #5000
    NOP
    GOTO REPETIR
   RETORNAR:
    RETURN
    
    .END


