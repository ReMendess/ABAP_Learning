*&---------------------------------------------------------------------*
*& Include          ZINCLUDE_SOS
*&---------------------------------------------------------------------*

START-OF-SELECTION.

*Calculando a média
  ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim ) / 4.

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
