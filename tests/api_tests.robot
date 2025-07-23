*** Settings ***
Resource          ../resources/api_keywords.robot

*** Test Cases ***
Search User by ID
    Search User    2
    Verify Status Code    200
    Verify User Name    Janet    Weaver

Delete User
    Delete User    2
    Verify Status Code    204
    
