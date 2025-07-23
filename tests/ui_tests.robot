*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/ui_keywords.robot

Suite Setup      SeleniumLibrary.Open Browser     https://the-internet.herokuapp.com/login     chrome
Suite Teardown   Close Browser

*** Test Cases ***
Login Successful
    Access Login Page
    Fill Username and Password    tomsmith    SuperSecretPassword!
    Click Login Button
    ${variable}=    Verify Success Message    You logged into a secure area!