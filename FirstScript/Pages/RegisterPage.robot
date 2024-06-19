*** Variables ***
# XPath selectors

#RegisterPage
#fields
${Firstname_field}    id= customer.firstName
${lastName_field}    id= customer.lastName
${address_field}    id= customer.address.street
${City_field}    id= customer.address.city
${state_field}    id= customer.address.state
${zipCode_field}    id= customer.address.zipCode
${phoneNumber_field}    id= customer.phoneNumber
${SSN_field}    id= customer.ssn
${Newusername_field}    id= customer.username
${Newpassword_field}    id= customer.password
${repeatedPassword_field}    id= repeatedPassword

#buttons
${submit_button}    xpath=//*[@id="customerForm"]/table/tbody/tr[13]/td[2]/input




