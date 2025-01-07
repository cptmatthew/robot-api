*** Settings ***
Library               RequestsLibrary

*** Variables ***

*** Keywords ***
Step 1: Fazer uma resquest get para o url
    ${response}=    GET  https://restful-booker.herokuapp.com/booking
*** Test Cases ***

Cenário 1: Fazer uma request
    Step 1: Fazer uma resquest get para o url