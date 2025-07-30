*&---------------------------------------------------------------------*
*& Report ZSIMBOLOTEXTOS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsimbolotextos.

*Programa cópia do ZCASE, contudo utilizando text symbols.

*Tela de Parametro
SELECTION-SCREEN BEGIN OF BLOCK b1.
PARAMETERS: p_cat(1) TYPE c.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.

*Variável que vai pegar o valor de acordo com o parametro
  DATA:ld_descricao TYPE string.

*Estrutura CASE
  CASE p_cat.
    WHEN 'A'.
      ld_descricao = TEXT-001.
    WHEN 'B'.
      ld_descricao = TEXT-002.
    WHEN 'C'.
      ld_descricao = TEXT-003.
    WHEN 'D'.
      ld_descricao = TEXT-004.
    WHEN 'E'.
      ld_descricao = TEXT-005.
    WHEN OTHERS.
      ld_descricao = TEXT-006.
  ENDCASE.

*Printando na tela
  WRITE ld_descricao.
