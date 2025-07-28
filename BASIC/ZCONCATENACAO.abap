*&---------------------------------------------------------------------*
*& Report ZCONCATENACAO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zconcatenacao.

DATA: ld_nome(20)      TYPE c,
      ld_sbnom(20)     TYPE c,
      ld_nmcomplet(50) TYPE c.
ld_nome = 'Renan'.
ld_sbnom = 'de Oliveira Mendes'.


*CONCATENATE ld_nome ld_sbnom
*  INTO ld_nmcomplet SEPARATED BY ' '.


ld_nmcomplet = |{ ld_nome } { ld_sbnom } |.

*Convite
WRITE: 'Olá', ld_nmcomplet.
SKIP.
WRITE:'Te convidamos para o evento XYZ'.
