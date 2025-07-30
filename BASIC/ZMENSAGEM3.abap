*&---------------------------------------------------------------------*
*& Report ZMENSAGEM3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmensagem3.

*Tipo
*-----------------------------------------------------------------------*
*S = Sucesso
*E = Erro
*W = Aviso
*I = Informação
*A = Abortar
*X = Cancelar (DUMP)

*Usos
*MESSAGE 'TESTE' type 'S'.

SELECTION-SCREEN BEGIN OF BLOCK b1.
PARAMETERS p_msg(60) TYPE c OBLIGATORY DEFAULT 'Vai Corinthians'.
PARAMETERS p_type    TYPE c OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b1.

AT SELECTION-SCREEN.
  IF p_type = 'W'.
    MESSAGE 'Isso é um aviso' TYPE 'W'.
  ENDIF.

START-OF-SELECTION.
  MESSAGE p_msg TYPE p_type.

  WRITE 'Fim'.
