*** Settings ***
Library    SeleniumLibrary

Test Teardown    Close All Browsers

*** Test Cases ***
ค้นหา robotframework ใน Google ผ่าน Chrome
    เปิดเบราว์เซอร์            
    กรอกข้อมูลในช่องค้นหา      
    กดปุ่มค้นหา
    หาคำค้นหาในหน้าที่ค้นหา
    กดลิงก์แรกที่เจอ
    ตรวจสอบ

*** Keywords ***
เปิดเบราว์เซอร์
    Open Browser    https://www.google.co.th    gc
กรอกข้อมูลในช่องค้นหา
    Input Text    q    robotframework
กดปุ่มค้นหา
    # Click Button    btnK
    Press Keys    q    RETURN
หาคำค้นหาในหน้าที่ค้นหา
    Wait Until Element Is Visible    //*[@id="rso"]
กดลิงก์แรกที่เจอ
    Click Element    //*[@id="rso"]/div[1]/div/div[1]/a
ตรวจสอบ
    Title Should Be    Robot Framework