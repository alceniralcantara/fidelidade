*** Settings ***
Resource            base.robot

*** Test Cases ***
TC01 - Acessando com a Matricula 05⋅DE⋅82
    [Tags]      TC01
    Inciando o Teste
    Inserindo a Matricula           ${TC01}
    Validação de Matricula Válida
    Finalizando o Teste

TC02 - Acessando com a Matricula 24-54-XI
    [Tags]      TC02
    Inciando o Teste
    Inserindo a Matricula           ${TC02}
    Validação de Matricula Válida
    Finalizando o Teste

TC03 - Acessando com a Matricula 22-HT-53
    [Tags]      TC03
    Inciando o Teste
    Inserindo a Matricula           ${TC03}
    Validação de Matricula Válida
    Finalizando o Teste

TC04 - Tentativa de Acesso com a Matricula ZZ-AA-00
    [Tags]      TC04
    Inciando o Teste
    Inserindo a Matricula           ${TC04}
    Validação de Matricula Inválida
    Finalizando o Teste

TC05 - Tentativa de Acesso com a Matricula Vazia
    [Tags]      TC05
    Inciando o Teste
    Inserindo a Matricula           ${TC05}
    Validação de Matricula Inválida
    Finalizando o Teste