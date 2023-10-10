***setting***
Library       RequestsLibrary

***variables***

${path}       is_prime
${case1}      20
${case2}      70
${case3}      13
${port}       4567

***keyword***
is prime
    [Arguments]    ${number}    ${path}
    ${response}=    Get    http://localhost:4567/${path}/${number}
    Should Be Equal As Strings    ${response.status_code}    200
    [return]   ${response.content}

***test cases***
number value is not prime ${case1}
    ${response}=    is prime    ${case1}    ${path}
    should be equal as strings    ${response}    False

number value is not prime ${case2}
    ${response}=    is prime    ${case2}    ${path}
    should be equal as strings    ${response}    False
number value is prime ${case3}
    ${response}=    is prime    ${case3}    ${path}
    should be equal as strings    ${response}    True


