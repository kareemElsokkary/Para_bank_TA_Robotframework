*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/HomePage.robot
Resource    ../Pages/OpenAccountPage.robot
Resource    ../Pages/RegisterPage.robot
Resource    ../Helper/resource.robot
Resource    ../Helper/Registernewuser.robot
Resource    ../Test Data/NewUser.robot

Test Setup    Go To Website Para Bank
Test Teardown    Close Browser



*** Test Cases ***
Open New Account for new user
             Start Register
             Generate Unique Username
             Input User Details
             Submit Registration
             verify the new user is created
             open new account
             Capture New account Page Screenshot

*** Keywords ***
open new account
             Click Element    ${Open_New_Account_section}
             Click Button    ${Open_New_Account_button}
             Sleep    3
             Page Should Contain            Account Opened!
             Page Should Contain        Congratulations, your account is now open.
             Page Should Contain        Your new account number:

Capture New account Page Screenshot
            Capture Page Screenshot    filename=NewAccount.png
