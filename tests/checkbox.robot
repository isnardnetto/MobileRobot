*** Settings ***

Resource   ../resources/base.resource


*** Test Cases ***
Deve realizar um clique simples

  Start session
  Get started
  Navigate to                Clique em Botões
  Go to item                 Clique simples     Botão clique simples

  Click text                 CLIQUE SIMPLES
  Wait Until Page Contains   Isso é um clique simples

  Close session