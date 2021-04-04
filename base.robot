*** Settings ***
Library             Selenium2Library

*** Variables ***
${fidelidade}       https://www.fidelidade.pt/PT/particulares/Auto/Simuladores/Automovel/Paginas/default.aspx
${TC01}             05⋅DE⋅82
${TC02}             24-54-XI
${TC03}             22-HT-53
${TC04}             ZZ-AA-00
${TC05}

*** Keywords ***
Iniciar Sessão
    Open Browser            ${fidelidade}       Firefox

Aguardar a Página por 2s
    Sleep                                   2

Aguardar a Página por 4s
    Sleep                                   4

Clicar em Aceitar Cookies
    Click Element                           css:a.optanon-allow-all

Selecionar o Iframe
    Select Frame                            xpath://*[@id='Simulator']

Aguardar pelo Elemento Iframe
    Aguardar a Página por 2s
    Wait Until Element Is Visible           xpath://*[@id='Simulator']

Clicar no Campo de Matricula
    Click Element                           xpath://input[@class="OSFillParent"]

Inserindo a Matricula
    [Arguments]                             ${matricula}
    Input Text                              xpath://input[@class="OSFillParent"]        ${matricula}

Validação de Página Principal Carregada
    Aguardar pelo Elemento Iframe
    Selecionar o Iframe
    Page Should Contain Element             css:.Bold
    Page Should Contain                     Qual é a sua matrícula?

Validação de Matricula Válida
    Aguardar a Página por 4s
    Page Should Not Contain Element         xpath://input[@disabled="disabled"]

Validação de Matricula Inválida
    Aguardar a Página por 4s
    Page Should Contain Element             xpath://input[@disabled="disabled"]      

Clicar em Seguinte
    Click Element                           id:CFID_B2C_SIM_Th_SIMAUTO_wt59_block_wtMainContent_CFID_B2C_SIM_Pat_SIMAUTO_wtCustomCard_block_wtCustomCardContent_CFID_B2C_SIM_Pat_SIMAUTO_wt8_block_wtFooter

Tirar Print da Tela
    Capture Page Screenshot

Encerrar Sessão
    Close Browser

Inciando o Teste
    Iniciar Sessão
    Aguardar a Página por 2s
    Validação de Página Principal Carregada
    Aguardar pelo Elemento Iframe
    Selecionar o Iframe
    Clicar no Campo de Matricula
    Aguardar a Página por 2s

Finalizando o Teste
    Aguardar a Página por 2s
    Clicar em Seguinte
    Aguardar a Página por 2s
    Tirar Print da Tela
    Encerrar Sessão