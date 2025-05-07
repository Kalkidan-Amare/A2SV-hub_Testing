*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}    chrome
${URL}        https://hub.a2sv.org/
${TIMEOUT}    10s
${EMAIL}      
${PASSWORD}   

*** Keywords ***
Open Browser And Navigate To A2SV
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    ${TIMEOUT}

Login To A2SV
    [Arguments]    ${email}=${EMAIL}    ${password}=${PASSWORD}
    Click Element    css=.css-frxd6u
    Wait Until Element Is Visible    name=email    ${TIMEOUT}
    Input Text    name=email    ${email}
    Input Password    name=password    ${password}
    Click Button    xpath=//button[@type='submit']

Logout From A2SV
    Click Element    css=.css-1hy9t21
    Wait Until Page Contains    Logout
    Click Element   css=.css-1mfts9q
    Wait Until Page Contains    Login    ${TIMEOUT}

Navigate To Profile
    Click Element    css=.css-1hy9t21
    Wait Until Page Contains    Profile
    Click Element   css=.css-1e98n2x
    Wait Until Page Contains    Profile    ${TIMEOUT}

Navigate To Setting
    Click Element    css=.css-1hy9t21
    Wait Until Page Contains    Setting
    Click Element   css=.css-1hpog9z
    Wait Until Page Contains    Setting    ${TIMEOUT}


