*** Settings ***
Resource    ../resources/common.robot
Suite Setup    Open Browser And Navigate To A2SV
Suite Teardown    Close Browser

*** Test Cases ***
Verify Setting Elements
    Login To A2SV
    Wait Until Page Contains    Problems    ${TIMEOUT}
    Navigate To Setting
    Logout From A2SV
    
    