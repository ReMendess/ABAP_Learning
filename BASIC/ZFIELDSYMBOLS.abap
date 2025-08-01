*&---------------------------------------------------------------------*
*& Report ZFIELDSYMBOLS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zfieldsymbols.

DATA: ld_text TYPE char100.

*Usado como ponteiro, para apontar diretamente na memoria da variável, tabela ou estrutura.
FIELD-SYMBOLS <fs> TYPE char100.

ASSIGN ld_text TO <fs>.

ld_text = 'Teste'.

WRITE <fs>.

*Se alterar o valor na variável, é alterado o valor no Field Symbol também, pois ele aponta para o local na memoria do valor.
ld_text = 'Alterando'.

NEW-LINE.
WRITE <fs>.

NEW-LINE.

*Verificando se o FS tem referência
IF <fs> IS ASSIGNED.
  WRITE: 'Tem referencia'.
ELSE.
  WRITE: 'Não tem referencia'.
ENDIF.

NEW-LINE.

*Limpando a referencia de um FS
UNASSIGN <fs>.

IF <fs> IS ASSIGNED.
  WRITE: 'Tem referencia'.
ELSE.
  WRITE: 'Não tem referencia'.
ENDIF.

WRITE sy-uline.

*FIELD-SYMBOLS com estruturas.

DATA: ls_scarr TYPE scarr.

FIELD-SYMBOLS <fs_scarr> TYPE scarr.

ls_scarr-carrid = 1.
ls_scarr-carrname = 'Testando'.

ASSIGN ls_scarr TO <fs_scarr>.

WRITE <fs_scarr>.

WRITE sy-uline.

*FIELD-SYMBOLS com Tabela interna

DATA: lt_scarr TYPE STANDARD TABLE OF scarr.

*Preenchendo a tabela interna
SELECT *
  FROM scarr
  INTO TABLE lt_scarr.

FIELD-SYMBOLS <lt_scarr> TYPE scarr.

*Criando um Loop e usando ASSIGNING para referenciar o FS
LOOP AT lt_scarr ASSIGNING <lt_scarr>.
  WRITE <lt_scarr>-carrname.
ENDLOOP.


*WRITE sy-uline.
*
**FIELD-SYMBOLS com Tabela interna, mas apontando diretamente pra tabela
*
*DATA: lt_scarr2 TYPE STANDARD TABLE OF scarr.
*
**Preenchendo a tabela interna
*SELECT *
*  FROM scarr
*  INTO TABLE lt_scarr2.
*
*FIELD-SYMBOLS <lt_scarr2> LIKE lt_scarr2.
*
*ASSIGN lt_scarr2 TO <lt_scarr2>.
