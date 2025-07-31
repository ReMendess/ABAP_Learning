*&---------------------------------------------------------------------*
*& Report ZESTRUTURA2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zestrutura2.

START-OF-SELECTION.
  DATA: BEGIN OF ls_localizacao,
          pais(2)    TYPE c,
          uf(2)      TYPE c,
          cidade(30) TYPE c,
        END OF ls_localizacao.
*É Possível preencher uma estrutura de uma vez.
  ls_localizacao = 'BRSPSão Bernardo do Campo'.

  WRITE ls_localizacao.
