*** Settings ***
Library    SeleniumLibrary
Library    DataDriver          file=../Test Data/TestData.csv        encoding=utf_8    dialect=unix
Resource    ../Pages/HomePage.robot
Resource    ../Helper/resource.robot
Resource    ../Pages/RegisterPage.robot
Resource    ../Test Data/NewUser.robot

Test Setup    Go To Website Para Bank
Test Teardown    Close Browser
Test Template    Login to my account


*** Test Cases ***
Get Data from csv then login with ${username} and password ${password}
#user login ${username}  ${password}
#*** Test Cases ***        username        password
#Invalid username            xx            xxx
#Invalid password            xyx            xxx


*** Keywords ***


Login to my account
    [Arguments]        ${username}        ${password}
    Login with valid username and password     ${username}        ${password}
Capture Registration Page Screenshot
    Capture Page Screenshot    filename=RegistrationPage.png

