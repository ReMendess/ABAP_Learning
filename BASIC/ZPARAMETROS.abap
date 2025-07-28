*&---------------------------------------------------------------------*
*& Report ZPARAMETROS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zparametros.

SELECTION-SCREEN BEGIN OF BLOCK b1.
PARAMETERS: p_1bim(2) TYPE p DECIMALS 2.
PARAMETERS: p_2bim(2) TYPE p DECIMALS 2.
PARAMETERS: p_3bim(2) TYPE p DECIMALS 2.
PARAMETERS: p_4bim(2) TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
  DATA ld_media(4) TYPE p DECIMALS 2.

  ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim ) / 4.

  WRITE: 'A Média do aluno é de', ld_media.
