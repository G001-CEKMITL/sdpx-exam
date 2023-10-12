*** Settings ***
Library    RequestsLibrary

*** Variables ***
${url}    http://127.0.0.1:5050
${path}    next2
${case01}    5
${case02}    -5
${case03}    3.5

*** Keywords ***
is_prime
    [Arguments]    ${number}   ${path}
    ${response}=    Get    ${url}/${path}/${number}
    Should Be Equal As Strings    ${response.status_code}    200
    [Return]    ${response}

*** Test Cases ***
be 7 when x is ${case01}
    ${response}=    is_prime    ${case01}    ${path}
    should be equal as strings    ${response.content}    7

be neg3 when x is ${case02}
    ${response}=    is_prime    ${case02}    ${path}
    should be equal as strings    ${response.content}    -3

be 5dot5 when x is ${case03}
    ${response}=    is_prime    ${case03}    ${path}
    should be equal as strings    ${response.content}    5.5
