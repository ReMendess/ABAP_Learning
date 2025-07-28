*&---------------------------------------------------------------------*
*& Report ZVARIAVEIS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zvariaveis.

*Declarando variáveis in hard-code.
DATA ld_id TYPE i.            "Tipo inteiro
DATA ld_nome(40) TYPE c.            "Tipo char/texto
DATA ld_dtnasci TYPE d.            "Tipo data
DATA ld_hrnasci TYPE t.            "Tipo hora
DATA ld_peso(6) TYPE p DECIMALS 3. "Tipo decimal
DATA ld_desc TYPE string.       "Tipo string
DATA ld_login(5) TYPE n.            "Tipo numerico, com 0 a esquerda

*Preenchendo as variáveis
ld_id = 15.
ld_nome = 'Renan Mendes'.
ld_dtnasci = '199903206'.
ld_hrnasci = '033012'.
ld_peso = '75.312'.
ld_desc = 'Primeiro Cliente, que compra bastante'.
ld_login = '1'.

*Printando Dados na Tela
WRITE 'Dados do Cliente'.
NEW-LINE.

WRITE 'ID'.
WRITE ld_id.
NEW-LINE.

WRITE 'Nome'.
WRITE ld_nome.
NEW-LINE.

WRITE 'Data de Nascimento'.
WRITE ld_dtnasci.
WRITE ld_hrnasci.
NEW-LINE.

WRITE 'Peso'.
WRITE ld_peso.
NEW-LINE.

WRITE 'Descrição'.
WRITE ld_desc.
NEW-LINE.

WRITE 'Login'.
WRITE ld_login.
NEW-LINE.
