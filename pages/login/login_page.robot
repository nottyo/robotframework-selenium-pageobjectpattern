*** Settings ***
Resource          ../../imports.robot
Variables         login_page_locators.yaml

*** Keywords ***
User Login With Username: ${username} & Password: ${password}
    [Documentation]    Specify Username & Password on Login Page
    Wait Until Element Is Visible    ${username_textbox_id}    timeout=${wait_timeout}    error=${page_not_load_error}
    Input Text    ${username_textbox_id}    ${username}
    Input Password    ${password_textbox_id}    ${password}
    Click Button    ${login_button_id}

User Failed To Login
    [Documentation]    Check If User failed to login
    Wait Until Page Contains    ${login_failed_error}    timeout=${wait_timeout}
    Title Should Be    ${login_failed_title}
    Capture Page Screenshot
