*&---------------------------------------------------------------------*
*& Report ZCLASSEMENSAGEM
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zclassemensagem.

*Transação SE91 para criar classes de mensagens.

*Mensagem simples
START-OF-SELECTION.
  MESSAGE s000(zmsn).

*Mensagem com 1 parametro
*START-OF-SELECTION.
*  MESSAGE s001(zmsn) WITH 'Renan'.

**Mensagem com 2 parametro
*START-OF-SELECTION.
*  MESSAGE s002(zmsn) WITH 'Curso' 'ABAP'.

**Mensagem com documentação
*START-OF-SELECTION.
*  MESSAGE s003(zmsn).
