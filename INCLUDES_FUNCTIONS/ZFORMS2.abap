*&---------------------------------------------------------------------*
*& Report ZFORMS2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zforms2.

*Tela de Parametros/Input
SELECTION-SCREEN BEGIN OF BLOCK b1.
PARAMETERS: p_1bim(4) TYPE p DECIMALS 2.
PARAMETERS: p_2bim(4) TYPE p DECIMALS 2.
PARAMETERS: p_3bim(4) TYPE p DECIMALS 2.
PARAMETERS: p_4bim(4) TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
  DATA ld_media(12) TYPE p DECIMALS 2.

*FORM externo.
  PERFORM calcular_media.

*Condições
  IF ld_media > 0 AND ld_media < 50.
    WRITE: 'Sua média foi de', ld_media, 'Infelizmente, está reprovado'.
  ELSEIF ld_media > 50 AND ld_media < 60.
    WRITE: 'Sua média foi de', ld_media, 'Por pouco, está reprovado'.
  ELSEIF ld_media > 59.
    WRITE: 'Sua média foi de', ld_media, 'Aprovado'.
  ELSE.
    WRITE: 'Digite um valor válido'.
  ENDIF.

*O FORM externo é um INCLUDE, precisa declarar
  INCLUDE zforms2_calcular_mediaf01.
