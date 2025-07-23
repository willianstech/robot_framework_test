*** Settings ***
Library    RequestsLibrary
Library    Collections
*** Variables ***
${BASE_URL}    https://reqres.in/api
${API_KEY}     reqres-free-v1

*** Keywords ***
Search User
    [Arguments]    ${id}
    &{headers}=    Create Dictionary    x-api-key=${API_KEY}
    Create Session    reqres    ${BASE_URL}    headers=${headers}
    ${response}=    GET On Session    reqres    /users/${id}
    Set Suite Variable    ${response}

Delete User
    [Arguments]    ${id}
    &{headers}=    Create Dictionary    x-api-key=${API_KEY}
    Create Session    reqres    ${BASE_URL}    headers=${headers}
    ${response}=    DELETE On Session    reqres    /users/${id}
    Set Suite Variable    ${response}

Verify Status Code
    [Arguments]    ${expected}
    Should Be Equal As Integers    ${response.status_code}    ${expected}

Verify User Name
    [Arguments]    ${first_name}    ${last_name}
    ${body}=    Set Variable    ${response.json()}
    ${data}=    Get From Dictionary    ${body}    data
    Run Keyword If    "${data}" is dict    Should Be Equal    ${data["first_name"]}    ${first_name}   
    ...    AND    Should Be Equal    ${data["last_name"]}    ${last_name}
    Run Keyword If    "${data}" is list    Should Be Equal    ${data[0]["first_name"]}    ${first_name}
    ...    AND    Should Be Equal    ${data[0]["last_name"]}    ${last_name}