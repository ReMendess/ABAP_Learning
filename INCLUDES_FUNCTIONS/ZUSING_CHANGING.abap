*&---------------------------------------------------------------------*
*& Report ZUSING_CHANGING
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zusing_changing.

PARAMETERS: p_num1 TYPE i,
            p_num2 TYPE i.

DATA: gv_resultado TYPE i.

START-OF-SELECTION.

*Criando um FORM enviando as variaveis p_num e alterando a variavel resultado
  PERFORM somar_numeros USING    p_num1 p_num2
                        CHANGING gv_resultado.

  WRITE: / 'Resultado da soma:', gv_resultado.

  INCLUDE zusing_changing_somar_numerf01.
