*** Settings ***
Library           Selenium2Library
Test Teardown     Close Browser

*** Test Cases ***
Login To Jenkins Success Case
    [Documentation]    Login to Jenkins with username&password success
    [Tags]    regression_test
    Open Browser    http://localhost:8080/login    browser=chrome
    Wait Until Element Is Visible    id=j_username    timeout=10s
    Input Text    id=j_username    nottyo
    Input Password    name=j_password    Welcome1
    Click Button    id=yui-gen1-button
    Wait Until Page Contains    New Item    timeout=10s
    Title Should Be    Dashboard [Jenkins]
    Capture Page Screenshot

Login To Jenkins Failed Case
    [Documentation]    Login to Jenkins with invalid password
    [Tags]    regression_test
    Open Browser    http://localhost:8080/login    browser=chrome
    Wait Until Element Is Visible    id=j_username    timeout=10s
    Input Text    id=j_username    nottyo
    Input Password    name=j_password    Welcome2
    Click Button    id=yui-gen1-button
    Wait Until Page Contains    Invalid login information. Please try again.    timeout=10s
    Title Should Be    Login Error [Jenkins]
    Capture Page Screenshot
