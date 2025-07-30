*&---------------------------------------------------------------------*
*& Report ZMENSAGEM2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmensagem2.

*Tipo
*-----------------------------------------------------------------------*
*S = Sucesso
*E = Erro
*W = Aviso
*I = Informação
*A = Abortar
*X = Cancelar (DUMP)

*Uso
*MESSAGE 'TESTE' TYPE 'S' DISPLAY LIKE 'E'.


* A mensagem será do tipo S - Sucesso, mas na tela aparecera como um Aviso.
START-OF-SELECTION.
  MESSAGE 'TESTE' TYPE 'S' DISPLAY LIKE 'W'.

  WRITE 'Fim'.
