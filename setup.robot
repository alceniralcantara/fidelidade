*** Settings ***
Resource            base.robot

Test Setup          Open Browser        ${fidelidade}       Firefox
Test Teardown       Close Browser

*** Test Cases ***
TC01 - Simulação com Matricula Válida: 05-DE-82
    [Tags]      TC01
    Inciando o Teste
    Buscando a Matricula
    Inserindo a Matricula           ${TC01}
    Validando a Matricula
    Validação de Matricula Válida
    Validação da Página de Cotação de Seguro
    Validação Cotação Matrícula 05-DE-82
    Finalizando o Teste

TC02 - Simulação com Matricula Válida: 24-54-XI
    [Tags]      TC02
    Inciando o Teste
    Buscando a Matricula
    Inserindo a Matricula           ${TC02}
    Validando a Matricula
    Validação de Matricula Válida
    Validação da Página de Cotação de Seguro
    Validação Cotação Matrícula 24-54-XI
    Finalizando o Teste

TC03 - Simulação com Matricula Válida: 22-HT-53
    [Tags]      TC03
    Inciando o Teste
    Buscando a Matricula
    Inserindo a Matricula           ${TC03}
    Validando a Matricula
    Validação de Matricula Válida
    Validação Cotação Matrícula 22-HT-53
    Finalizando o Teste

TC04 - Tentativa de Acesso com a Matricula ZZ-AA-00
    [Tags]      TC04
    Inciando o Teste
    Buscando a Matricula
    Inserindo a Matricula           ${TC04}
    Validação de Matricula Inválida
    Finalizando o Teste

TC05 - Tentativa de Acesso com a Matricula Vazia
    [Tags]      TC05
    Inciando o Teste
    Buscando a Matricula
    Inserindo a Matricula           ${TC05}
    Validação de Matricula Inválida
    Finalizando o Teste