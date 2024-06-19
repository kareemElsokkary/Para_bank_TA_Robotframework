*** Variables ***
${URL}           https://parabank.parasoft.com/
${BROWSER}       chrome
*** Keywords ***
Go to Website Para Bank
    Open Browser    ${URL}    browser=${BROWSER}
    Maximize Browser Window


Log out
     Click Element    ${Logout_button}
     Element Should Be Visible    ${login_button}

Wait For Elements To Load
    Sleep    30s

Generate Unique Username
    ${timestamp}=    Evaluate    datetime.datetime.now().strftime("%Y%m%d%H%M%S")
    ${random_number}=    Generate Random String    4    [NUMBERS]
    ${unique_username}=    Catenate     ${timestamp}    ${random_number}
    Set Test Variable    ${generated_username}    ${unique_username}
