*** Settings ***
Documentation    Essa suíte testa o site da amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador  
Test Teardown    Fechar o navegador 



*** Test Cases ***
Caso de Teste 01 - Acesso ao menu eletronicos
    [Documentation]  Esse teste verifica o menu eletronicos do site da amazon.com.br
    ...              E verifica a categoria computadores
    [Tags]           menus
    Acessar o home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se o titulo da pagina tem o valor "Eletrônicos e Tecnologia"
    Verificar se aparace a categoria "Computadores e Informática"



