*** Variables ***
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


