*** Settings ***
Library    RequestsLibrary

*** Variables ***
${url}    http://127.0.0.1:5000
${path}    is_prime
${case01}    17
${case02}    36
${case03}    13219

*** Keywords ***
is_prime
    [Arguments]    ${number}   ${path}
    ${response}=    Get    ${url}/${path}/${number}
    Should Be Equal As Strings    ${response.status_code}    200
    [Return]    ${response}

*** Test Cases ***
number is prime ${case01}
    ${response}=    is_prime    ${case01}    ${path}
    should be equal as strings    ${response.content}    True

number is not prime ${case02}
    ${response}=    is_prime    ${case02}    ${path}
    should be equal as strings    ${response.content}    False

number is prime ${case03}
    ${response}=    is_prime    ${case03}    ${path}
    should be equal as strings    ${response.content}    True
