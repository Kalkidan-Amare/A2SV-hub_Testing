*** Settings ***
Resource    ../resources/common.robot
Suite Setup    Open Browser And Navigate To A2SV
Suite Teardown    Close Browser

*** Variables ***
${INVALID_EMAIL}    invalid@email.com
${INVALID_PASSWORD}    invalidpassword

*** Test Cases ***
Valid Login Test
    Login To A2SV
    Wait Until Page Contains    Problems    ${TIMEOUT}
    Logout From A2SV