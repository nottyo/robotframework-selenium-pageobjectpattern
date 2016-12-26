*** Settings ***
Resource     ../../imports.robot
Variables    dashboard_page_locators.yaml

*** Keywords ***
Dashboard Page Should Be Displayed
    [Documentation]  Check If Jenkins Dashboard page (Main Page) is displayed.
    Wait Until Page Contains    ${new_item_text}    timeout=${wait_timeout}
    Title Should Be    ${dashboard_title}
    Capture Page Screenshot

User Create New Project
    [Documentation]  Create New Item
    Click Link    ${new_item_text}

Logout from Jenkins
    Click Link    ${logout_link}
