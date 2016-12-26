*** Settings ***
Documentation     Jenkins Login Tests
Test Setup        Open Browser And Go To URL ${login_url}
Test Teardown     Close Browser
Resource          ../imports.robot
Resource          ../pages/login/login_page.robot
Resource          ../pages/dashboard/dashboard_page.robot

*** Test Cases ***
Login To Jenkins Success Case
    [Documentation]    Login to Jenkins with username&password success
    [Tags]    regression_test
    Given User Login With Username: ${login_user} & Password: ${login_password}
    Then Dashboard Page Should Be Displayed

Login To Jenkins Failed Case
    [Documentation]    Login to Jenkins with invalid password
    [Tags]    regression_test
    Given User Login With Username: ${login_user} & Password: Welcome2
    Then User Failed To Login
