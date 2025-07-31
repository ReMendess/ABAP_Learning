*----------------------------------------------------------------------*
***INCLUDE ZUSING_CHANGING_SOMAR_NUMERF01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form SOMAR_NUMEROS
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*&      --> P_NUM1
*&      --> P_NUM2
*&      <-- GV_RESULTADO
*&---------------------------------------------------------------------*
*Recebendo os valores das variáveis p_num e colocando nas váriveis internas p_valor
* recebendo a variável resultado colocando o valoor em p_soma e devolvendo para a variável resultado
FORM somar_numeros USING    p_valor1 TYPE i
                             p_valor2 TYPE i
                   CHANGING p_soma    TYPE i.

  p_soma = p_valor1 + p_valor2.

ENDFORM.
