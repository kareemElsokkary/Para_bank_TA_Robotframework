*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/HomePage.robot
Resource    ../Helper/resource.robot
Resource    ../Pages/RegisterPage.robot
Resource    ../Test Data/NewUser.robot

Test Setup    Go To Website Para Bank
Test Teardown    Close Browser



*** Test Cases ***
Register New User
             Start Register
             Generate Unique Username
             Input User Details
             Submit Registration
             Capture Registration Page Screenshot
             verify the new user is created

*** Keywords ***
Start Register
    Click Element    ${Register_button}


Input User Details
    Input Text    ${Firstname_field}        ${Firstname}
    Input Text    ${lastName_field}         ${lastName}
    Input Text    ${address_field}          ${address}
    Input Text    ${City_field}              ${city}
    Input Text    ${state_field}            ${state}
    Input Text    ${zipCode_field}          ${zipCode}
    Input Text    ${phoneNumber_field}      ${phoneNumber}
    Input Text    ${SSN_field}              ${SSN}
    Input Text    ${Newusername_field}         ${generated_username}
    Input Text    ${Newpassword_field}         ${Newpassword}
    Input Text    ${repeatedPassword_field}     ${repeatedPassword}

Submit Registration
    Click Element    ${submit_button}

verify the new user is created
    Wait Until Element Contains    xpath=//*[@id="rightPanel"]/p     Your account was created successfully. You are now logged in.     20
    Element Text Should Be    xpath=//*[@id="rightPanel"]/p    Your account was created successfully. You are now logged in.

Capture Registration Page Screenshot
    Capture Page Screenshot    filename=RegistrationPage.png