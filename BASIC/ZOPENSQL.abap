*&---------------------------------------------------------------------*
*& Report ZOPENSQL
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zopensql.
*SELECT

DATA lt_scarr TYPE STANDARD TABLE OF scarr.
DATA ls_scarr TYPE scarr.

*Comando em OpenSQL o SAP traduz/executa de forma nativa, independente do banco de dados do SAP do cliente.

*Comando Select
SELECT *
  FROM scarr
  INTO TABLE lt_scarr.

*Loop para printar os dados
LOOP AT lt_scarr INTO ls_scarr.
  WRITE: ls_scarr-carrname.
  NEW-LINE.
ENDLOOP.

WRITE: sy-uline.
*&---------------------------------------------------------------------*

*INSERT

CLEAR ls_scarr.
ls_scarr-carrid = 'Z1'.
ls_scarr-carrname = 'Gol - Linhas aereas'.

*Inserido diretamente na tabela do DDI um novo registro com INSERT.
INSERT scarr FROM ls_scarr.

*Comando Select
SELECT *
  FROM scarr
  INTO TABLE lt_scarr.

*Loop para printar os dados
LOOP AT lt_scarr INTO ls_scarr.
  WRITE: ls_scarr-carrname.
  NEW-LINE.
ENDLOOP.

WRITE: sy-uline.
*&---------------------------------------------------------------------*

*MODIFY

CLEAR ls_scarr.
ls_scarr-carrid = 'Z1'. "Essa é a chave primaria que ele usa como referência para encotrar o registro que queremos atualizar
ls_scarr-carrname = 'Azul - Linhas aereas'. "Atualizando esse campo

*Modificando a tabela com a estrutura.
MODIFY scarr FROM ls_scarr.

*Comando Select
SELECT *
  FROM scarr
  INTO TABLE lt_scarr.

*Loop para printar os dados
LOOP AT lt_scarr INTO ls_scarr.
  WRITE: ls_scarr-carrname.
  NEW-LINE.
ENDLOOP.

WRITE: sy-uline.
*&---------------------------------------------------------------------*

*UPDATE

CLEAR ls_scarr.
ls_scarr-carrid = 'Z1'. "Essa é a chave primaria que ele usa como referência para encotrar o registro que queremos atualizar
ls_scarr-carrname = 'Latam - Linhas aereas'. "Atualizando esse campo

*Atualizando com UPDATE
UPDATE scarr
SET carrname = ls_scarr-carrname
WHERE carrid = ls_scarr-carrid.

*Comando Select
SELECT *
  FROM scarr
  INTO TABLE lt_scarr.

*Loop para printar os dados
LOOP AT lt_scarr INTO ls_scarr.
  WRITE: ls_scarr-carrname.
  NEW-LINE.
ENDLOOP.

WRITE: sy-uline.
*&---------------------------------------------------------------------*

*DELETE

CLEAR ls_scarr.
ls_scarr-carrid = 'Z1'. "Essa é a chave primaria que ele usa como referência para encotrar o registro que queremos atualizar
ls_scarr-carrname = 'Latam - Linhas aereas'. "Atualizando esse campo

*Deletando um registro com DELETE
DELETE FROM scarr WHERE carrid = 'Z1'.

*Comando Select
SELECT *
  FROM scarr
  INTO TABLE lt_scarr.

*Loop para printar os dados
LOOP AT lt_scarr INTO ls_scarr.
  WRITE: ls_scarr-carrname.
  NEW-LINE.
ENDLOOP.

WRITE: sy-uline.
*&---------------------------------------------------------------------*
