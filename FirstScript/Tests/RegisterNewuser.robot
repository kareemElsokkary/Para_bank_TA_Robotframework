*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/HomePage.robot
Resource    ../Helper/resource.robot
Resource    ../Helper/Registernewuser.robot
Resource    ../Pages/RegisterPage.robot
Resource    ../Test Data/NewUser.robot

Test Setup    Go To Website Para Bank
Test Teardown    Close Browser



*** Test Cases ***
Register New User
            [Tags]          RegressionTesting
             Start Register
             Generate Unique Username
             Input User Details
             Submit Registration
             verify the new user is created
             Capture Registration Page Screenshot

Login to my account
            Login with valid username and password     ${generated_username}        ${Newpassword}

