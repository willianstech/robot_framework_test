*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL_LOGIN}    https://the-internet.herokuapp.com/login

*** Keywords ***
Open Chrome Browser
    SeleniumLibrary.Open Browser    chrome    ${URL_LOGIN}
    Maximize Browser Window

Close Chrome Browser
    Close Browser

Access Login Page
    Go To    ${URL_LOGIN}

Fill Username and Password
    [Arguments]    ${user}    ${password}
    Input Text    id=username    ${user}
    Input Text    id=password    ${password}

Click Login Button
    Click Button    xpath=//button[@type='submit']

Verify Success Message
    [Arguments]    ${message}
    Wait Until Page Contains    ${message}