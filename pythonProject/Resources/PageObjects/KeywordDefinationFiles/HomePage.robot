*** Settings ***
Library  SeleniumLibrary
Library  ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Choose tab
    [Arguments]     ${tab_name}
    ${tab_locator}=     Get Tab Name    ${tab_name}
    Wait Until Element Is Visible   ${tab_locator}
    Click Element       ${tab_locator}