*&---------------------------------------------------------------------*
*& Report ZCONDICOES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcondicoes.

*Tela de Parametros/Input
SELECTION-SCREEN BEGIN OF BLOCK b1.
PARAMETERS: p_1bim(4) TYPE p DECIMALS 2.
PARAMETERS: p_2bim(4) TYPE p DECIMALS 2.
PARAMETERS: p_3bim(4) TYPE p DECIMALS 2.
PARAMETERS: p_4bim(4) TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
  DATA ld_media(12) TYPE p DECIMALS 2.

*Calculando a média
  ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim ) / 4.


*Operadores
*>
*<
*=
*<>
*>=
*<=
*NOT

*Condições
*  IF ld_media < 60.
*    WRITE: 'Sua média foi de', ld_media, 'Infelizmente, está reprovado'.
*  ELSE.
*    WRITE: 'Sua média foi de', ld_media, 'Parabéns, aprovado'.
*  ENDIF.

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
