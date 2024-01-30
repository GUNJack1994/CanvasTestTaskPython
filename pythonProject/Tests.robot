*** Settings ***
Documentation       Search Google
Library             SeleniumLibrary
Test Teardown       Close Browser
Resource            resources/variables.resource
Resource            resources/driver.resource
Resource            PageObjects/login_page.resource
Resource            PageObjects/home_page.resource


*** Test Cases ***
Search Google with "Google Search" button via Chrome
    Open Url With Chrome            ${demo_URL}
    Log into App    ${login}    ${password}
    Choose tab      Reports & Settings

*** Keywords ***
Enter Keyword
    [Arguments]     ${keyword}
    Input Text      xpath://input[@name="q"]     ${keyword}