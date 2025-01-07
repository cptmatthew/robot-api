*** Settings ***
Library               RequestsLibrary

*** Keywords ***
Step 1: Fazer request GET
    ${response}=    GET  https://restful-booker.herokuapp.com/booking
    Log  ${response.text}
    Set Test Variable    ${response}

Step 2: Verificar se o get foi feito com sucesso
    Should Be True    ${response.ok}

Step 3: Verificar se o STATUS code é 200
    Should Be Equal As Strings    ${response.status_code}    200

*** Test Cases ***
Cenário 1:validando Get melhorado
    Step 1: Fazer request GET
    Step 2: Verificar se o get foi feito com sucesso
    Step 3: Verificar se o STATUS code é 200