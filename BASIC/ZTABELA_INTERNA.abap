*&---------------------------------------------------------------------*
*& Report ZTABELA_INTERNA
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztabela_interna.

*Debugue cada passo para entender/ acompanhar os processos dentro da tabela interna.

START-OF-SELECTION.

*Criando uma tabela interna do tipo standard do tipo zempregados.
  DATA lt_cliente TYPE STANDARD TABLE OF zempregrados.
  DATA ld_cliente TYPE zempregrados-empregado.
* Estrutura de dados
  DATA ls_cliente TYPE zclientes.

*&---------------------------------------------------------------------*

* Aplicando um valor na variavel local e depois armazenando dentro da tabela interna.
  ld_cliente = 1000002.
  APPEND ld_cliente TO lt_cliente.

  ld_cliente = 1000002.
  APPEND ld_cliente TO lt_cliente.

  ld_cliente = 1000003.
  APPEND ld_cliente TO lt_cliente.

  ld_cliente = 1000004.
  APPEND ld_cliente TO lt_cliente.

*&---------------------------------------------------------------------*

* Modificando um valor pelo index. João para Lucas
  ld_cliente = 1000004.
  MODIFY lt_cliente FROM ld_cliente INDEX 2.

* Deletando uma linha pelo index.
  DELETE lt_cliente INDEX 1.

* Deletando uma linha com filtro.
  DELETE lt_cliente WHERE primenome = 1000003.
*&---------------------------------------------------------------------*

* Limpando uma estrutura e passando os valores da tabela interna para a estrutura pelo index.
  CLEAR ld_cliente..
  READ TABLE lt_cliente INTO ld_cliente INDEX 1.

* Limpando uma estrutura e passando os valores da tabela interna para a estrutura usando um filtro.
  CLEAR ld_cliente.
  READ TABLE lt_cliente INTO ld_cliente WITH KEY primenome = 1000004.


* Loop em uma estrtura de dados.
  LOOP AT lt_cliente INTO ls_cliente-id.
    WRITE ls_cliente-id.
    NEW-LINE.
  ENDLOOP.

** Loop em uma estrtura de dados modificando os valores.
*  LOOP AT lt_cliente INTO ls_cliente-id.
*    ls_cliente-id = | { ls_cliente-id } 2 |.
*    MODIFY lt_cliente FROM ls_cliente-id.
*  ENDLOOP.


*Ordenando uma tabela interna.
  SORT lt_cliente BY empregado ASCENDING.
*Após ordenar vamos remover os valores duplicados.
  DELETE ADJACENT DUPLICATES FROM lt_cliente COMPARING empregado.

*&---------------------------------------------------------------------*

* Limpando a tabela interna.
  CLEAR lt_cliente.

  WRITE 'Fim'.
