*Settings*
Documentation       Login test suite

Resource        ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*Test Cases*
User Login

    ${user}     Factory User Login
        
    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    User Shold Be Logged In     ${user}

Incorrect Pass
    [Tags]      inv_pass
    ${user}     Create Dictionary       email=elson@hotmail.com     password=abc123

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

User not found
    [Tags]      user_404
    ${user}     Create Dictionary       email=elson@404.net     password=abc123

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

Incorrect email
    [Tags]      inv_email
    ${user}     Create Dictionary       email=elson.com.br     password=abc123

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Should Be Type Email        