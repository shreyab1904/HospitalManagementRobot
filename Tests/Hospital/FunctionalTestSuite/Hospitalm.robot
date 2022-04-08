*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://127.0.0.1:5000/
${username}  admin
${password}  12345
${name}  Shreya
${mobileno}  918227
${age}  21
${address}  pune
${date}  02-01-2001
${place}  wakad
${pincode}  213456

${updname}  hrithik
${updmobile}  8805369505
${updage}  22
${updadd}  chinchwad
${upddate}  12-04-2000
${updplace}  shridharnagar
${updpincode}  411033

*** Test Cases ***
login test case
    [Documentation]  login page
    [Tags]  login
    open browser  ${url}  chrome
    maximize browser window
    input text  name:username  ${username}
    input text  name:password  ${password}
    click button  xpath://html/body/form/div/div/div/table/tbody/tr[3]/td/button
    sleep  2s


patient entry test case
    [Documentation]  patient entry
    [Tags]  register driver
    input text  name:name  ${name}
    input text  name:mobileno  ${mobileno}
    input text  name:age  ${age}
    input text  name:address  ${address}
    input text  name:dob  ${date}
    input text  name:place  ${place}
    input text  name:pincode  ${pincode}
    click button  xpath://html/body/div/div/div/form/table/tbody/tr[8]/td/button
    sleep  5s


search test case
    [Documentation]  searching patient
    [Tags]  search
    click element  xpath://html/body/nav/div/div/ul/li[2]/a
    sleep  1s
    input text  name:mobno  ${mobileno}
    click button  xpath://html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep  5s


update test case
    [Documentation]  updating patient
    [Tags]  update
    click element  xpath://html/body/nav/div/div/ul/li[5]/a
    sleep  1s
    input text  name:newname  ${updname}
    input text  name:mobileeno  ${updmobile}
    input text  name:newage  ${updage}
    input text  name:newaddress  ${updadd}
    input text  name:newdob  ${upddate}
    input text  name:newplace  ${updplace}
    input text  name:newpincode  ${updpincode}
    click button  xpath://html/body/div/div/div/form/table/tbody/tr[8]/td/button
    click element  xpath://html/body/nav/div/div/ul/li[1]/a


delete test case
    [Documentation]  deleting data
    [Tags]  delete
    click element  xpath://html/body/nav/div/div/ul/li[4]/a
    input text  name:mobno  ${mobileno}
    click button  xpath://html/body/form/div/div/div/table/tbody/tr[2]/td/button
    click element  xpath://html/body/nav/div/div/ul/li[1]/a
    sleep  3s


logout test case
    [Documentation]  logging out
    [Tags]  logout
    click element  xpath://html/body/nav/div/div/ul/li[6]/a
    sleep  3s
    close browser
*** Keywords ***


