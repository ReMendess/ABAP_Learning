*&---------------------------------------------------------------------*
*& Report ZMENSAGEM4
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmensagem4.

*Tipo
*-----------------------------------------------------------------------*
*S = Sucesso
*E = Erro
*W = Aviso
*I = Informação
*A = Abortar
*X = Cancelar (DUMP)

*Usos
*MESSAGE s000(ztest) WITH 'Renan'.

*Criando uma classe de mensagem ztest, e criado a mensagem 000
* i de informação + o número da mensagem
* a mensagem vai aparecer na parte de baixo da tela
*
START-OF-SELECTION.
  MESSAGE i000(ztest) WITH 'Renan'.

  WRITE 'Fim'.

*-----------------------------------------------------------------------*
*Outra forma de criar e mostrar uma mensagem
*Utilizando o sy-msgid
*Descomente para testar:

*START-OF-SELECTION.
*  sy-msgid = 'ZTEST'.
*  MESSAGE ID sy-msgid TYPE 'I' NUMBER 000 WITH 'Renan'.
*
*  WRITE 'Fim'.

*-----------------------------------------------------------------------*

*Outra forma
*Utilizando uma variavel
*Descomente para testar:

*START-OF-SELECTION.
*  DATA: ld_message TYPE string.
*  MESSAGE i000(ztest) WITH 'Renan' INTO ld_message.
*  WRITE ld_message.
*  SKIP.
