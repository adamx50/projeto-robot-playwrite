*** Settings ***
Library    SeleniumLibrary
Library    GherkinLibrary

*** Variables ***
${URL}        https://example.com
${USERNAME}   myuser
${PASSWORD}   mypassword

*** Test Cases ***
Given   Eu navego para a pagina de login
    Open Browser    ${URL}    chrome
When    Eu entro com credenciais válidas
    Input Text      id=username    ${USERNAME}
    Input Text      id=password    ${PASSWORD}
    Click Button    id=login
Then    Eu devo ver o dashboard
    Element Should Be Visible    id=dashboard
    Close Browser