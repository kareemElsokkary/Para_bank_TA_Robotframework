*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://parabank.parasoft.com/
${BROWSER}       chrome
${username}       Test_Kareem
${password}       123456


*** Test Cases ***
Login to my account
        Go To Website Para Bank
        Enter username
        Enter password
        Login
        Account Page is displayed


*** Keywords ***
Go to Website Para Bank
        Open Browser    ${URL}    browser=${BROWSER}
        Maximize Browser Window
Enter username
        Input Text    xpath://*[@id="loginPanel"]/form/div[1]/input     ${username}
Enter password    
        Input Password    xpath://*[@id="loginPanel"]/form/div[2]/input    ${password}
Login
        Click Button    xpath://*[@id="loginPanel"]/form/div[3]/input
Account Page is displayed
        Page Should Contain Element    xpath://*[@id="showOverview"]/h1
        Page Should Contain    Accounts Overview

