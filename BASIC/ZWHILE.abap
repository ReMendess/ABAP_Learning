*&---------------------------------------------------------------------*
*& Report ZWHILE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zwhile.

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


WRITE 'WHILE'.
NEW-LINE.

* Para while é preciso informar uma condição booleana para realizar a repetição.
WHILE sy-index <= lines( lt_plane ).

  READ TABLE lt_plane INTO ls_plane INDEX sy-index.
  WRITE: ls_plane-planetype, ls_plane-seatsmax.
  NEW-LINE.

ENDWHILE.


*WHILE sy-index <= lines( lt_plane ).
*  WRITE: 'sy-index', sy-index.
*  WRITE: 'sy-tabix', sy-tabix.
*ENDWHILE.
