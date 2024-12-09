*** Settings ***

Library  AppiumLibrary
Library    OperatingSystem

*** Variables ***

${START}  QAX

*** Test Cases ***
Deve realizar um clique simples

    Open Application	http://localhost:4723	
  ...                 platformName=Android
  ...                 deviceName=Android Emulator
  ...                 automationName=UIAutomator2
  ...                 app=${EXECDIR}/app/yodapp-beta.apk 
  ...                 udid=emulator-5554
  ...                 autoGrantPermissions=true


  Wait Until Page Contains       ${START} 
  Click Text                     ${START}

  ${hamburguer}   Set Variable  xpath=//*[@content-desc="Open navigation drawer"]
  Wait Until Element Is Visible  ${hamburguer}     5
  Click Element                  ${hamburguer}

  ${menu_item}    Set Variable  xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Clique em Botões"]

  Wait Until Element Is Visible  ${menu_item}           5
  Click Element                  ${menu_item}

  Wait Until Page Contains   Clique simples  5
  Click text                 Clique simples
  Wait Until Page Contains   Botão clique simples

  Click text                 CLIQUE SIMPLES
  Wait Until Page Contains   Isso é um clique simples

 
  Close Application