*** Settings ***
Resource     ../../imports.robot
Variables    project_page_locators.yaml

*** Keywords ***

User Create New FreeStyle Project Name "${project_name}"
    [Documentation]  Create New FreeStyle Project
    Wait Until Element Is Visible    ${item_name_id}    timeout=${wait_timeout}
    Input Text    ${item_name_id}    ${project_name}
    Click Element    ${freestyle_project_css}
    Click Button    ${ok_button_id}
