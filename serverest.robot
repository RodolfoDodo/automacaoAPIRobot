*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome

*** Test Cases ***
Acessar o site DemoBlaze
    Open Browser    https://www.demoblaze.com/    ${BROWSER}
    Maximize Browser Window
