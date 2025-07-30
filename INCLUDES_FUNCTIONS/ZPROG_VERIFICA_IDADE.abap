*&---------------------------------------------------------------------*
*& Report ZPROG_VERIFICA_IDADE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zprog_verifica_idade.


INCLUDE zinc_verifica_idade.

PARAMETERS: p_idade TYPE i.

START-OF-SELECTION.
  PERFORM verificar_maioridade USING p_idade.
