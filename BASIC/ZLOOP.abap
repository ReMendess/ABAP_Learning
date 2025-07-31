*&---------------------------------------------------------------------*
*& Report ZLOOP
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zloop.

*Declarando tabela interna
DATA: lt_plane TYPE STANDARD TABLE OF saplane.
DATA: ls_plane TYPE saplane.

DATA: lt_scarr TYPE STANDARD TABLE OF scarr.
DATA: ls_scarr TYPE scarr.

DATA: lt_spfli TYPE STANDARD TABLE OF spfli.
DATA: ls_spfli TYPE spfli.

SELECT *
  INTO TABLE lt_plane
  FROM saplane.

SELECT *
  INTO TABLE lt_scarr
  FROM scarr.

SELECT *
  INTO TABLE lt_spfli
  FROM spfli.


WRITE 'LOOP AT'.
NEW-LINE.

*Loop que vai percorrer toda a tabela e imprimir os tipos de aviões e númeor maximo de assentos.
LOOP AT lt_plane INTO ls_plane.
  WRITE: ls_plane-planetype, ls_plane-seatsmax.
  NEW-LINE.
ENDLOOP.


**loop com filtro, onde o número de assentos seja maior que 160.
*loop at lt_plane into ls_plane where seatsmax > 160.
*  write: ls_plane-planetype, ls_plane-seatsmax.
*  new-line.
*endloop.


**Loop com variáveis de index e coluna.
*LOOP AT lt_plane INTO ls_plane.
*  WRITE: 'sy-index', sy-index. "Variável de index
*  WRITE: 'sy-tabix', sy-tabix. "Variável de coluna
*  NEW-LINE.
*ENDLOOP.
