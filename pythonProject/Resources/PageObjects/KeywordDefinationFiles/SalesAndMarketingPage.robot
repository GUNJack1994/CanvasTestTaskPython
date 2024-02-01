*** Settings ***
Library  SeleniumLibrary
Library     ../Locators/Locators.py
Variables  ../Locators/Locators.py
Variables    ../TestData/TestData.py


*** Keywords ***

Create New Contact
    [Arguments]     ${firstName}    ${lastName}     ${firstCategory}    ${secondCategory}   ${role}
    Wait Until Element Is Visible     ${CreateContactButton}
    Click Element   ${CreateContactButton}
    Wait Until Element Is Visible   ${FirstNameInputBox}
    Input Text    ${FirstNameInputBox}    ${firstName}
    Input Text    ${LastNameInputBox}    ${lastName}
    Sleep    2
    Click Element    ${CategoryDropdown}
    ${firstCategoryElement}=    Get Element From Category    ${firstCategory}
    Wait Until Element Is Visible   ${firstCategoryElement}
    Click Element    ${firstCategoryElement}
    Sleep    2
    Click Element    ${CategoryDropdown}
    ${secondCategoryElement}=    Get Element From Category    ${secondCategory}
    Wait Until Element Is Visible   ${secondCategoryElement}
    Scroll Element Into View    ${secondCategoryElement}
    Click Element    ${secondCategoryElement}
    Click Element    ${BusinessRoleDropdown}
    Wait Until Element Is Visible   ${BusinessRole}
    Click Element    ${BusinessRole}
    Sleep    2
    Click Button    ${SaveButton}
    Wait Until Element Is Visible    ${ContactTable}
    Get Text    locator