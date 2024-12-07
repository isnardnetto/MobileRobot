*** Settings ***

Library  AppiumLibrary

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

  Sleep     5
  
  Close Application