*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${URL}                           https://www.google.com/
${Browser}                       Chrome

${สมัครสมาชิค_BigC}                name=q  
${กรอกสิ่งที่จะค้นหา}                   สมัครสมาชิก Big C
${click_search}                     name=btnK
${click_login}                     //*[@id="rso"]/div[1]/div/div[1]/div/div/div[1]/a/h3
${click_register}                  //*[@id="content"]/div/div[2]/div/div[1]/ul/li[2]/a/img
${Code_Fill_out_Phone}             id=txtmobileno
${Fill_out_Phone}                  0904844563
${code_Fill_out_ID}                id=txtidcardno
${FIll_out_ID}                     1809700322204
${click_register_real}             //*[@id="registerfrm"]/input
${ไปที่ลงทะเบียน}                    //*[@id="facebook"]/body/div[3]/div[2]/div/div/div[1]/div/a
${ลงทะเบียน_Bigcard}               //*[@id="login-form"]/div/div[1]/button
${code_check_ID}                    id=card_number
${check_ID}                         1809700322204
${click_check_ID}                      id=check_member
${code_check_Phone}                 name=mobile_phone
${check_Phone}                      0638590390 
${click_check_MobilePhone}         id=check_mobile_newmember
${code_กรอก_OTP}                   name=otp_code
${กรอก_OTP}                        640839
${click_OTP}                       id=check_otp
 

*** Keywords ***
วิธีการเปิดgoogle
      Open Browser                  ${URL}     ${BROWSER} 
      Maximize Browser Window


*** Test Case ***
กรอกข้อมูลลงไป
     วิธีการเปิดgoogle
     input text                           ${สมัครสมาชิค_BigC}         ${กรอกสิ่งที่จะค้นหา} 
     click button                         ${click_search} 
     click element                        ${click_login}  
     click element                        ${click_register} 
     input text                           ${Code_Fill_out_Phone}     ${Fill_out_Phone}   
     input text                           ${code_Fill_out_ID}        ${FIll_out_ID}
     click button                         ${click_register_real} 
     click element                        ${ไปที่ลงทะเบียน}            
     click element                        ${ลงทะเบียน_Bigcard} 
     Wait Until Element Is Visible        ${code_check_ID}
     input text                           ${code_check_ID}           ${check_ID}
     click button                         ${click_check_ID} 
     Wait Until Element Is Visible        ${code_check_Phone}
     input text                           ${code_check_Phone}        ${check_Phone}
     click element                        ${click_check_MobilePhone}
     Wait Until Element Is Visible        ${code_กรอก_OTP}           
     input text                           ${code_กรอก_OTP}           ${กรอก_OTP}  
     Wait Until Element Is Visible        ${click_OTP}
     
czzxcxzczxczxc
 #LOVEEIEI