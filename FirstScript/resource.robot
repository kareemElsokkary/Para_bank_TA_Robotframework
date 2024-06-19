
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