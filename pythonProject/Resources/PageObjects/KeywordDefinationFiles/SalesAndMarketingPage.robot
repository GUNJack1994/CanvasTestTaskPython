*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***

Create New Contact
    Click Element   ${CreateContactButton}
    Input Text    ${FirstNameInputBox}    Test
    Input Text    ${LastNameInputBox}    Test
    Click Element    ${CategoryDropdown}
    Select From List By Value    locator
