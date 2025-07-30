*&---------------------------------------------------------------------*
*& Report ZMENSAGEM
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmensagem.

*Tipo
*-----------------------------------------------------------------------*
*S = Sucesso
*E = Erro
*W = Aviso
*I = Informação
*A = Abortar
*X = Cancelar (DUMP)

SELECTION-SCREEN BEGIN OF BLOCK b1.
PARAMETERS p_msg(60) TYPE c OBLIGATORY DEFAULT 'Testando uma mensagem/Vai Corinthians'.
PARAMETERS p_type    TYPE c OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
  MESSAGE p_msg TYPE p_type.

  WRITE 'Fim'.
