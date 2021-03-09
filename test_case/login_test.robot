*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.practo.com/
${BROWSER}  chrome


*** Test Cases ***
LoginTest
    open browser    ${URL}  ${BROWSER}
    LoginToPracto
    close browser

*** Keywords ***
LoginToPracto
    click link  xpath://*[@id="root"]/div/div/div[1]/div[1]/div[2]/div/div[3]/div[3]/span/a
    input text  id:username  your_email
    input text  id:password  your_password
    click element   id:login