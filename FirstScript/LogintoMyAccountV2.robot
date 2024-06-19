*** Settings ***
Library    SeleniumLibrary
Resource    resource.robot
Resource    TestData.robot
Resource     WebElements.robot
Test Setup    Go To Website Para Bank
Test Teardown    Close Browser


*** Test Cases ***
Login to my account

    Enter username
    Enter password
    Login
    Account Page is displayed

Verify my account balance
    Enter username
    Enter password
    Login
    Account number is correct
    Balance is correct
    Available Amount is correct
    Total is correct

Log out
    Enter username
    Enter password
    Login
    Log out

