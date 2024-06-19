*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://parabank.parasoft.com/
${BROWSER}       chrome
${username}      Kareem_Test_1
${password}      123456
${Account}       14343
${Balance}       $50000.00
${AvailableAmount}   $50000.00
${Total}         $50000.00

# XPath selectors
#login
${username_field}    xpath=//*[@id="loginPanel"]/form/div[1]/input
${password_field}    xpath=//*[@id="loginPanel"]/form/div[2]/input
${login_button}      xpath=//*[@id="loginPanel"]/form/div[3]/input
#AccountPage
${account_page_header}    xpath=//*[@id="showOverview"]/h1
${account_field}    xpath=//*[@id="accountTable"]/tbody/tr[1]/td/a
${Balance_field}    xpath=//*[@id="accountTable"]/tbody/tr[1]/td[2]
${AvailableAmount_field}    xpath=//*[@id="accountTable"]/tbody/tr[1]/td[3]
${Total_field}    xpath=//*[@id="accountTable"]/tbody/tr[2]/td[2]/b
${Logout_button}    xpath= //a[text()='Log Out']



*** Test Cases ***
Login to my account
    Go To Website Para Bank
    Enter username
    Enter password
    Login
    Account Page is displayed

Verify my account balance
    Account number is correct
     Balance is correct
     Available Amount is correct
     Total is correct

Log out
    Log out


*** Keywords ***
Go to Website Para Bank
    Open Browser    ${URL}    browser=${BROWSER}
    Maximize Browser Window

Enter username
    Input Text    ${username_field}    ${username}

Enter password
    Input Password    ${password_field}    ${password}

Login
    Click Button    ${login_button}

Account Page is displayed
    Page Should Contain Element    ${account_page_header}
    Page Should Contain    Accounts Overview

Account number is correct
    Wait Until Element Contains    ${account_field}    ${Account}    30
    Element Text Should Be    ${account_field}    ${Account}

Balance is correct
    Wait Until Element Contains    ${Balance_field}    ${Balance}    30
    Element Text Should Be    ${Balance_field}    ${Balance}

Available Amount is correct
    Wait Until Element Contains    ${AvailableAmount_field}    ${AvailableAmount}    30
    Element Text Should Be    ${AvailableAmount_field}    ${AvailableAmount}

Total is correct
    Wait Until Element Contains    ${Total_field}    ${Total}    30
    Element Text Should Be    ${Total_field}    ${Total}

Log out
     Click Element    ${Logout_button}
     Element Should Be Visible    ${login_button}