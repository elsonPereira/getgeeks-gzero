*Settings*
Documentation       BeGeek test suite

Resource        ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   After Test

*Test Cases*
Be a Geek
    [Tags]      smoke
    ${user}     Factory User        be_geek
    Do Login            ${user}

    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Geek Form Should Be Success

Short Description

    ${user}     Factory User        short_desc
    Do Login        ${user}

    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be        A descrição deve ter no minimo 80 caracteres

Long Description
    [Tags]      long_desc
    ${user}     Factory User        long_desc
    Do Login        ${user}

    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be        A descrição deve ter no máximo 255 caracteres

# Desafio final do módulo PRO

# 1 - Whatsapp em branco
# 2 - Whatsapp somente DDD
# 3 - Whatsapp com 10 digitos
# 4 - Descrição em branco
# 5 - Valor hora em branco
# 6 - Valor hora com alfanuméricos
# 7 - Valor hora com letras
# 8 - Valor hora com caracteres especiais

# Dica 1: Use o modelo de template de teste
# Dica 2: O Login ficará melhor se for executado uma única vez para todos os comportamentos.

Validation Spans
    [Tags]          desafio_02
    [Template]      Span Variation
    whatsapp        ${EMPTY}        O Whatsapp deve ter 11 digitos contando com o DDD
    whatsapp        11              O Whatsapp deve ter 11 digitos contando com o DDD
    whatsapp        1198070728      O Whatsapp deve ter 11 digitos contando com o DDD
    desc            ${EMPTY}        Informe a descrição do seu trabalho
    cost            ${EMPTY}        Valor hora deve ser numérico
    cost            sbphqk1         Valor hora deve ser numérico
    cost            sbphqk          Valor hora deve ser numérico
    cost            !@#$%&          Valor hora deve ser numérico

Empty Description
    [Tags]      empty_desc

    ${user}     Factory User        empty_desc
    Do Login    ${user}

    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    Informe a descrição do seu trabalho

Empty Whats
    [Tags]      empty_whats

    ${user}     Factory User        empty_whats
    Do Login    ${user}

    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    O Whatsapp deve ter 11 digitos contando com o DDD