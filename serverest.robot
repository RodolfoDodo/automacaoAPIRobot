*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        headlesschrome

*** Test Cases ***
Acessar o site DemoBlaze e verificar o título
    Open Browser    https://www.demoblaze.com/    ${BROWSER}
    Maximize Browser Window
    ${title}=    Get Title
    Should Be Equal    ${title}    Your Expected Title
