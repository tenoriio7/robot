*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem


*** Variables ***
${url}                    http://www.amazon.com.br
${id_eletronicos}         (//a[contains(@href,'electronics')])[1]
${page_title}             //h1[contains(.,'Eletrônicos e Tecnologia')]
${page_title_message}     Eletrônicos e Tecnologia
${computer_section}       //span[@dir='auto'][contains(.,'Computadores e Informática')]
${computer_title}         Computadores e Informática


*** Keywords ***
Abrir o navegador
    Open Browser   browser=chrome  service_log_path=logs
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot    filename=close.jpeg
    Close Browser

Acessar o home page do site Amazon.com.br
    Go To    ${url}

Entrar no menu "Eletrônicos"
    Wait Until Element Is Visible    locator=${id_eletronicos}
    Click Element                    locator=${id_eletronicos}

Verificar se o titulo da pagina tem o valor "${SECAO}"
    Wait Until Page Contains    text=${SECAO}
    Wait Until Element Is Visible    locator=${page_title}
Verificar se aparace a categoria "Computadores e Informática"
    Wait Until Page Contains    text=${page_title_message}
    Wait Until Element Is Visible    locator=${computer_section}
    
    