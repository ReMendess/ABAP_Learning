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
WRITE (15) 'Dados do Cliente'.
NEW-LINE.

WRITE (15) 'ID'.
WRITE ld_id LEFT-JUSTIFIED.
NEW-LINE.

WRITE (15) 'Nome'.
WRITE ld_nome LEFT-JUSTIFIED.
NEW-LINE.

WRITE 'Data de Nascimento'.
WRITE ld_dtnasci DD/MM/YYYY LEFT-JUSTIFIED.
*WRITE ld_hrnasci+0(2) LEFT-JUSTIFIED. "Pegando somente a hora. Está começando da posição 0 e pegando as duas próximas casas.
*WRITE ld_hrnasci+2(2) LEFT-JUSTIFIED. "Pegando somente os minutos. Está começando da posição 2 e pegando as duas próximas casas.
*WRITE ld_hrnasci+4(2) LEFT-JUSTIFIED. "Pegando somente os segundos. Está começando da posição 4 e pegando as duas próximas casas.

WRITE ld_dtnasci DD/MM/YYYY LEFT-JUSTIFIED.
WRITE: ld_hrnasci+0(2), ':', ld_hrnasci+2(2), ':', ld_hrnasci+4(2).
NEW-LINE.

WRITE (15) 'Peso'.
WRITE ld_peso LEFT-JUSTIFIED.
NEW-LINE.

WRITE (15) 'Descrição'.
WRITE ld_desc LEFT-JUSTIFIED.
NEW-LINE.

WRITE (15) 'Login'.
WRITE ld_login LEFT-JUSTIFIED.
NEW-LINE.
