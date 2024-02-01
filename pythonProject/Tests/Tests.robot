*** Settings ***
Documentation       Search Google
Library             SeleniumLibrary
Test Teardown       Close Browser
Variables          ../Resources/PageObjects/TestData/TestData.py
Resource           ../Resources/PageObjects/KeywordDefinationFiles/Common.robot
Resource           ../Resources/PageObjects/KeywordDefinationFiles/LoginPage.robot
Resource           ../Resources/PageObjects/KeywordDefinationFiles/HomePage.robot
Resource           ../Resources/PageObjects/KeywordDefinationFiles/SalesAndMarketingPage.robot


*** Test Cases ***
Create contact:
    Open Url With Chrome            ${demo_URL}
    Log into App    ${Username}    ${Password}
    Choose tab      Sales & Marketing
    Create New Contact  TestName    TestLastName    Business    Suppliers   MIS