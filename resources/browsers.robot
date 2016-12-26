*** Settings ***
Resource          ../imports.robot

*** Keywords ***
Open Browser And Go To URL ${url}
    [Documentation]    Create WebDriver for browser
    Create Webdriver    ${browser}
    Maximize Browser Window
    Go To    ${url}
