*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Log into App
    [Arguments]     ${login}    ${password}
    Input Text      xpath://input[@id="login_user"]     ${login}
    Input Text      xpath://input[@id="login_pass"]     ${password}
    Click Button    xpath://button[@id='login_button']