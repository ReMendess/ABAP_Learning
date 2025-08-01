*&---------------------------------------------------------------------*
*& Report ZDO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zdo.

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


WRITE 'DO x TIMES'.
NEW-LINE.

* Vai repetir 3 vezes o loop.
DO 3 TIMES.
  READ TABLE lt_plane INTO ls_plane INDEX sy-index.
  WRITE: ls_plane-planetype, ls_plane-seatsmax.

  NEW-LINE.

ENDDO.

*DO 3 TIMES.
*  WRITE: 'sy-index', sy-index.
*  WRITE: 'sy-tabix', sy-tabix.
*
*  NEW-LINE.
*
*ENDDO.


*WRITE 'DO Infinito'.
*NEW-LINE.
*
*DO.
*  READ TABLE lt_plane INTO ls_plane INDEX sy-index.
*  WRITE: ls_plane-planetype, ls_plane-seatsmax.
*  NEW-LINE.
*
*  IF sy-index > 5.
*    EXIT.
*
*  ENDIF.
*
*ENDDO.
