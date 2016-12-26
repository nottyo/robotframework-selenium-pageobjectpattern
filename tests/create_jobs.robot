*** Settings ***
Documentation     Create New Jobs on Jenkins
Test Setup        Open Browser And Login To Jenkins
Test Teardown     Close Browser
Resource          ../imports.robot

*** Keywords ***
Open Browser And Login To Jenkins
    [Documentation]   Open Browser and login to Jenkins
    Open Browser And Go To URL ${login_url}
    User Login With Username: ${login_user} & Password: ${login_password}
    Dashboard Page Should Be Displayed

*** Test Cases ***
Create New Job Success
    [Documentation]   Create New Job on Jenkins
    [Tags]    regression_test
    Given User Create New Project
    When User Create New FreeStyle Project Name "ROBOT-Sample_Project"
