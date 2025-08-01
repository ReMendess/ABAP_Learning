*&---------------------------------------------------------------------*
*& Report ZLOOP2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zloop2.

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


WRITE 'LOOP dentro de outro LOOP'.
NEW-LINE.

SKIP.

* Vai passar por cada linha aérea e escrever na tela
LOOP AT lt_scarr INTO ls_scarr.
  WRITE: ls_scarr-carrname.
  WRITE: sy-uline.
* caso encontre voos para a lihna aerea que está passando, vai escrever na tela a origem e destino
  LOOP AT lt_spfli INTO ls_spfli  WHERE carrid = ls_scarr-carrid.
    WRITE: ls_spfli-cityfrom, ls_spfli-cityto.
    NEW-LINE.

  ENDLOOP.

ENDLOOP.

** Parando um Loop com EXIT ao encontrar uma assento máximo maior que 200
*WRITE 'Parando um Loop com EXIT'.
*NEW-LINE.
*
*SKIP.
*
*LOOP AT lt_plane INTO ls_plane.
*  WRITE: ls_plane-planetype, ls_plane-seatsmax.
*
*  IF ls_plane-seatsmax > 200.
*    EXIT.
*  ENDIF.
*
*  NEW-LINE.
*ENDLOOP.
*
*WRITE: 'Fim'.


** Interrompendo uma iteração com CONTINUE
*WRITE 'Interrompendo uma iteração com CONTINUE'.
*NEW-LINE.
*
*SKIP.
*
*LOOP AT lt_plane INTO ls_plane.
*
*  IF ls_plane-seatsmax > 200.
*    CONTINUE.
*  ENDIF.
*
*  WRITE: ls_plane-planetype, ls_plane-seatsmax.
*
*
*  NEW-LINE.
*ENDLOOP.
*
*WRITE: 'Fim'.
