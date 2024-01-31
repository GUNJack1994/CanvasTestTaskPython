*** Settings ***
Library    SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***

Log into App
    [Arguments]     ${login}    ${password}
    Input Text      ${LoginUsernameInputBox}     ${login}
    Input Text      ${LoginPasswordInputBox}     ${password}
    Click Button    ${LoginButton}