*&---------------------------------------------------------------------*
*& Report ZCALCULADORA
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcalculadora.

*Parâmetros
PARAMETERS: p_num1 TYPE i,
            p_num2 TYPE i,
            p_oper TYPE c LENGTH 1.

*Variável para armazenar resultado
DATA: v_resultado TYPE i.

*Cabeçalho
WRITE: / '=== CALCULADORA BÁSICA ABAP ==='.

*Verifica qual operação o usuário escolheu
CASE p_oper.
  WHEN '+'.
    v_resultado = p_num1 + p_num2.
    WRITE: / 'Operação: Soma'.
  WHEN '-'.
    v_resultado = p_num1 - p_num2.
    WRITE: / 'Operação: Subtração'.
  WHEN '*'.
    v_resultado = p_num1 * p_num2.
    WRITE: / 'Operação: Multiplicação'.
  WHEN '/'.
    IF p_num2 = 0.
      WRITE: / 'Erro: Divisão por zero não é permitida.'.
      EXIT.
    ELSE.
      v_resultado = p_num1 / p_num2.
      WRITE: / 'Operação: Divisão'.
    ENDIF.
  WHEN OTHERS.
    WRITE: / 'Operação inválida. Use: + - * /'.
    EXIT.
ENDCASE.

*Exibe o resultado
WRITE: / 'Número 1:', p_num1,
       / 'Número 2:', p_num2,
       / 'Resultado:', v_resultado.
