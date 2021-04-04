*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${fidelidade}       https://www.fidelidade.pt/PT/particulares/Auto/Simuladores/Automovel/Paginas/default.aspx
${TC01}             05DE82
${TC02}             2454XI
${TC03}             22HT53
${TC04}             ZZAA00
${TC05}

*** Keywords ***
Inciando o Teste
    Validação de Página Principal Carregada

Clicar em Aceitar Cookies
    Wait Until Element Is Visible           xpath://*[@class="optanon-allow-all accept-cookies-button"]
    Click Element                           xpath://*[@class="optanon-allow-all accept-cookies-button"]

Validação de Página Principal Carregada
    Aguardar pelo Elemento Iframe
    Selecionar o Iframe
    Page Should Contain Element             css:.Bold
    Page Should Contain                     Qual é a sua matrícula?

Selecionar o Iframe
    Select Frame                            xpath://*[@id='Simulator']

Aguardar pelo Elemento Iframe
    Wait Until Element Is Visible           xpath://*[@id='Simulator']

Buscando a Matricula
    Aguardar pelo Elemento Iframe
    Selecionar o Iframe
    Clicar no Campo de Matricula

Validando a Matricula
    Clicar em Seguinte

Clicar no Campo de Matricula
    Click Element                           xpath://input[@class="OSFillParent"]

Inserindo a Matricula
    [Arguments]                             ${matricula}
    Input Text                              xpath://input[@class="OSFillParent"]        ${matricula}

Validação de Matricula Válida
    Wait Until Element Is Not Visible       xpath://input[@disabled="disabled"]
    Page Should Not Contain Element         xpath://input[@disabled="disabled"]

Validação de Matricula Inválida
    Wait Until Element Is Visible           xpath://input[@disabled="disabled"]
    Page Should Contain Element             xpath://input[@disabled="disabled"]      

Clicar em Seguinte
    Wait Until Element Is Visible           xpath://*[@value="Seguinte"]
    Wait Until Element Is Not Visible       xpath://input[@disabled="disabled"]
    Click Element                           xpath://*[@value="Seguinte"]

Validação da Página de Cotação de Seguro
    Aguardar a Página por 2s
    Wait Until Element Is Visible           xpath://*[@class='HeaderContainer ResultsHeader']
    Page Should Contain Element             xpath://*[@class='HeaderContainer ResultsHeader']

Validação Cotação Matrícula 05-DE-82
    Wait Until Page Contains                Este é um exemplo de pré-simulação para o veículo FORD Fiesta
    Page Should Contain                     Este é um exemplo de pré-simulação para o veículo FORD Fiesta

Validação Cotação Matrícula 24-54-XI
    Wait Until Page Contains                Este é um exemplo de pré-simulação para o veículo FORD Fiesta Diesel
    Page Should Contain                     Este é um exemplo de pré-simulação para o veículo FORD Fiesta Diesel

Validação Cotação Matrícula 22-HT-53
    Aguardar a Página por 2s
    Wait Until Page Contains                Este é um exemplo de pré-simulação para o veículo RENAULT Clio III Break Diesel
    Page Should Contain                     Este é um exemplo de pré-simulação para o veículo RENAULT Clio III Break Diesel

Aguardar a Página por 2s
    Sleep                                   2

Tirar Print da Tela
    Capture Page Screenshot

Finalizando o Teste
    Tirar Print da Tela