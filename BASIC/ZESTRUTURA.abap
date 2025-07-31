*&---------------------------------------------------------------------*
*& Report ZESTRUTURA
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zestrutura.

START-OF-SELECTION.
  DATA: BEGIN OF ls_cliente,
          id        TYPE int4,
          nome(20)  TYPE c,
          email(20) TYPE c,
        END OF ls_cliente.

  ls_cliente-id = 1.
  ls_cliente-nome = 'Renan'.
  ls_cliente-email = 'renan@teste.com.br'.

  WRITE ls_cliente-id.

  WRITE ls_cliente-nome.

  WRITE ls_cliente-email.
