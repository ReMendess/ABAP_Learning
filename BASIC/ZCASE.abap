*&---------------------------------------------------------------------*
*& Report ZCASE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcase.

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
      ld_descricao =  'Moto'.
    WHEN 'B'.
      ld_descricao = 'Carro'.
    WHEN 'C'.
      ld_descricao = 'Carga'.
    WHEN 'D'.
      ld_descricao = 'Passageiros'.
    WHEN 'E'.
      ld_descricao = 'Caminhão'.
    WHEN OTHERS.
      ld_descricao = 'Categoria inválida'.
  ENDCASE.

*Printando na tela
  WRITE ld_descricao.
