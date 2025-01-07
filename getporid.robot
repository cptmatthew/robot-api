*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Keywords ***
Step 1: Fazer get do id
    ${response}=    GET  https://restful-booker.herokuapp.com/booking/222    
    Set Test Variable    ${response}
Step 2: Conferir primeiro nome
    ${firstnamevalue}=    Get From Dictionary    ${response.json()}    firstname
    Should Be Equal As Strings    ${firstnamevalue}    Josh
Step 3: Conferir ultimo nome
    ${lastnamevalue}=    Get From Dictionary    ${response.json()}    lastname
    Should Be Equal As Strings    ${lastnamevalue}    Allen
Step 4: Conferir valor total
    ${totalpricevalue}=    Get From Dictionary    ${response.json()}    totalprice
    Should Be Equal As Numbers    ${totalpricevalue}    111
Step 5: Conferir necessidades adicionais
    ${additionalneedsvalue}=    Get From Dictionary    ${response.json()}    additionalneeds
    Should Be Equal As Strings    ${additionalneedsvalue}    super bowls

*** Test Cases ***

Cenário 1: Consultando as reservas cadastradas com base em uma id
    Step 1: Fazer get do id
    Step 2: Conferir primeiro nome
    Step 3: Conferir ultimo nome
    Step 4: Conferir valor total
    Step 5: Conferir necessidades adicionais