*&---------------------------------------------------------------------*
*& Report ZTIPOS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztipos.

*Criando um tipo simples personalizado
TYPES ly_nome TYPE char20.

*Criando uma variável do tipo criado.
DATA ld_nome TYPE ly_nome.

ld_nome = 'Renan'.

WRITE ld_nome.

WRITE: sy-uline.

*&---------------------------------------------------------------------*

* Criando um tipo para Estrutura
TYPES ly_scarr TYPE scarr.

DATA: ls_scarr TYPE ly_scarr, "Estrutura criada
      ld_scarr TYPE STANDARD TABLE OF scarr.

* Carregando dados da tabela SCARR do dicionário
SELECT * FROM scarr INTO TABLE ld_scarr.

* Loop nos dados carregados
LOOP AT ld_scarr INTO ls_scarr.
  WRITE: / ls_scarr-carrname.
ENDLOOP.

WRITE: sy-uline.
*&---------------------------------------------------------------------*

* Criando um tipo para Tabela interna
TYPES ly_scarr_tab TYPE STANDARD TABLE OF scarr.

DATA: ls_scarr2 TYPE ly_scarr,
      ld_scarr2 TYPE ly_scarr_tab. "Tabela criada

* Carregando dados da tabela SCARR do dicionário
SELECT * FROM scarr INTO TABLE ld_scarr2.

* Loop nos dados carregados
LOOP AT ld_scarr2 INTO ls_scarr2.
  WRITE: / ls_scarr2-carrname.
ENDLOOP.

WRITE: sy-uline.
*&---------------------------------------------------------------------*

* Criando um tipo para Range
TYPES ly_scarr_r TYPE STANDARD TABLE OF scarr-carrid.

DATA ld_scarr_r TYPE ly_scarr_r.

*&---------------------------------------------------------------------*

* Criando um tipo para Estruturas Customizadas. Essa estrutura terá somente os dois campos id e nome.
TYPES: BEGIN OF ly_scarr3
  , id TYPE scarr-carrid
  , nome TYPE scarr-carrname
  , END OF ly_scarr3.


DATA ls_scarr3 TYPE ly_scarr3.

*&---------------------------------------------------------------------*

* Criando um tipo para Estruturas Customizadas. Essa estrutura terá somente os dois campos id e nome.
TYPES: BEGIN OF ly_scarr4
  , id TYPE scarr-carrid
  , nome TYPE scarr-carrname
  , END OF ly_scarr4.


DATA ls_scarr4 TYPE ly_scarr4.

*&---------------------------------------------------------------------*

* Criando um tipo para Estruturas Customizadas com INCLUDE
* Muito usado quando queremos uma estrutura especifica mas queremos adicionar mais campos

TYPES: BEGIN OF ly_scarr5
         , id TYPE i. "Campo extra
         INCLUDE TYPE  scarr.

       TYPES: END OF ly_scarr5.


DATA ls_scarr5 TYPE ly_scarr5.

*&---------------------------------------------------------------------*

* Dá para misturar tudo e criar um tipo personalizado junto com uma estrutura e com uma tabela.
* Isso tudo ficará dentro de uma variável

TYPES ly_scarr_tab2 TYPE STANDARD TABLE OF scarr WITH NON-UNIQUE KEY carrid.

TYPES: BEGIN OF ly_scarr6
         , id TYPE i "Campo personalizado
         , scarr TYPE scarr
         , scarr_tab TYPE ly_scarr_tab2
         , END OF ly_scarr6.


DATA ls_scarr6 TYPE ly_scarr6.

WRITE 'Fim'.
