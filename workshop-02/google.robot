*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา robotframework ใน Google ผ่าน Chrome
    เปิดเบราว์เซอร์          
    กรอกข้อมูลในช่องค้นหา    
    กดปุ่มค้นหา
    ตรวจสอบ
    ปิดเบราว์เซอร์

*** Keywords ***
เปิดเบราว์เซอร์          Open Browser       https://www.google.co.th             gc
กรอกข้อมูลในช่องค้นหา    Input Text         q                                    robotframework
กดปุ่มค้นหา              Click Button       btnK