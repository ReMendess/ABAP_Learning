*&---------------------------------------------------------------------*
*& Include          ZINC_VERIFICA_IDADE
*&---------------------------------------------------------------------*

FORM verificar_maioridade USING p_idade TYPE i.

  IF p_idade >= 18.
    WRITE: / 'A pessoa é maior de idade.'.
  ELSE.
    WRITE: / 'A pessoa é menor de idade.'.
  ENDIF.

ENDFORM.
