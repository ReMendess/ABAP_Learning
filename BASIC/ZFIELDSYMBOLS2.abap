*&---------------------------------------------------------------------*
*& Report ZFIELDSYMBOLS2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zfieldsymbols2.

*FIELD SYMBOLS com variáveis Dinamicas.

DATA ld_text TYPE char100.

FIELD-SYMBOLS <fs> TYPE char100.

ASSIGN ('ld_text') TO <fs>.

ld_text = 'Testando'.

WRITE <fs>.

WRITE sy-uline.



*FIELD SYMBOLS generico com ANY (muito usado).

DATA ld_text2 TYPE char100.

FIELD-SYMBOLS <fs2> TYPE any.

ASSIGN ld_text2 TO <fs2>.

ld_text2 = 'Testando'.

WRITE <fs2>.

WRITE sy-uline.



*FIELD SYMBOLS com variáveis Dinamicas pegando a variável de um outro programa

DATA: varname TYPE char100.

varname = '(ZFIELDSYMBOLS)ld_text'.
FIELD-SYMBOLS <fs3> TYPE char100.

ASSIGN varname TO <fs3>.

WRITE <fs3>.
