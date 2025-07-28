*&---------------------------------------------------------------------*
*& Report ZCOMENTARIOS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
* Testando e aprendendo sobre comentários e indendação.*
*Autor: Renan Mendes*

REPORT zcomentarios.

START-OF-SELECTION.
  DATA: lt_data TYPE STANDARD TABLE OF zempregrados,
        ls_data TYPE zempregrados.

  SELECT * INTO TABLE lt_data
  FROM zempregrados.

  LOOP AT lt_data INTO ls_data.
    WRITE ls_data-primenome.
    WRITE ls_data-cargo.
    NEW-LINE.
  ENDLOOP.
