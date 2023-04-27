*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                            https://codenboxautomationlab.com/practice/
${browser}                        gc
${locator_redio}                  radioButton
${locator_dropdown}               id=autocomplete
${locator_StaticDropdown}         id=dropdown-class-example
${locator_Checkbox1}              name=checkBoxOption1
${locator_Checkbox2}              name=checkBoxOption3
${locator_mousehover}             id=mousehover

*** Keywords ***
Open Web Browser
    Set Selenium Speed          0.3s
    Open Browser                ${url}    ${browser}
    Maximize Browser Window



*** Test Cases ***
# TC-001 Open Browser
#     Open Web Browser
#     Wait Until Page Contains    Automation Practice
#     Close Browser

# TC-002 Select Redio
#     Open Web Browser
#     Wait Until Page Contains    Automation Practice
#     Select Radio Button         ${locator_redio}    radio2
#     Sleep                       2s
#     Close Browser


# TC-003 Dynamic Dropdown Example
#     Open Web Browser
#     Wait Until Page Contains    Automation Practice
#     Input Text                  ${locator_dropdown}    THAI
#     Click Element               xpath=//*[@id="ui-id-2"]   
#     Sleep                       2s   
#     Close Browser

# TC-004 Static Dropdown Example
#     Open Web Browser
#     Wait Until Page Contains    Automation Practice
#     Select From List By Label   xpath=//*[@id="dropdown-class-example"]   API 
#     Sleep                       2s   
#     Close Browser

# TC-005 Checkbox Example
#     Open Web Browser
#     Wait Until Page Contains    Automation Practice
#     Select Checkbox             ${locator_Checkbox1}
#     Select Checkbox             ${locator_Checkbox2}
#     Sleep                       2s   
#     Close Browser

# TC-006 Mouse Hover Example
#     Open Web Browser
#     Wait Until Page Contains    Automation Practice
#     Scroll Element Into View    name=iframe-name
#     Sleep       5s
#     Mouse Over    xpath=//*[@id="post-501"]/div/div[4]/div/fieldset/div
#     Sleep                       5s
#     Close Browser

TC-007 Check all 
    Open Web Browser
    Wait Until Page Contains    Automation Practice
    Select Radio Button         ${locator_redio}       radio2
    Input Text                  ${locator_dropdown}    THAI
    Click Element               xpath=//*[@id="ui-id-2"] 
    Select From List By Label   xpath=//*[@id="dropdown-class-example"]   API 
    Select Checkbox             ${locator_Checkbox1}
    Select Checkbox             ${locator_Checkbox2}
    Execute Javascript          window.scrollTo(0,1600)
    Sleep                       1s
    Mouse Over                  xpath=//*[@id="post-501"]/div/div[4]/div/fieldset/div
    Sleep                       3s
    Close Browser