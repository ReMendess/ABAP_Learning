*&---------------------------------------------------------------------*
*& Report ZCONSTANTES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zconstantes.

*Criando variáveis
DATA: ld_raio(12) TYPE p DECIMALS 2,
      ld_area(12) TYPE p DECIMALS 2.

*Criando constantes
CONSTANTS: lc_pi(12) TYPE p DECIMALS 13 VALUE '3.1415926535898'.

ld_raio = 10.

*Formula para calcular a área
ld_area = ( ld_raio * ld_raio ) * lc_pi.

WRITE: 'A área de um circulo com raio de', ld_raio, 'é', ld_area.
