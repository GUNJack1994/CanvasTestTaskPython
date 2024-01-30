*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Choose tab
    [Arguments]     ${tab_name}
    Click Element    xpath=//a[@id='grouptab-5']