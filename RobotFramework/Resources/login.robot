*** Settings ***
Library            String
Library            SeleniumLibrary
Library            ScreenCapLibrary

*** Variable ***
${BROWSER}         chrome
${baseURL}         https://bugbank.netlify.app/

${user1}           jailson@teste.com.br
${password1}       teste1
${user2}           paulo@teste.com.br
${password2}       teste2

${LOWER}          qwertyuiopasdfghjklzxcvbnm
${UPPER}          QWERTYUIOPASDFGHJKLZXCVBNM
${LETTERS}        ${LOWER}${UPPER}
${NUMBERS}        1234567890

*** Keywords ***

# SETUP & TEARDOWN
Abrir navegador
    Log to Console                  David, estou abrindo o navegador e maximizando-o!
    Log                             David, estou abrindo o navegador e maximizando-o!  

    Open Browser                    about:blank     ${BROWSER}
    Maximize Browser Window

    Sleep                           2
    Log to Console                  Também estarei iniciando a gravação da tela
    Log                             Também estarei iniciando a gravação da tela

    Start Gif Recording
    Sleep                           2

Fechar navegador
    Capture Page Screenshot
    Stop Gif Recording

    Log to Console                  David, estou encerrando o navegador!
    Log                             David, estou encerrando o navegador!  
    Sleep                           2

    Close Browser 

# Passo a passo
DADO que estamos na página inicial do BugBank
    Go To                           ${BaseURL}
    Sleep                           2
    Title Should Be                 BugBank | O banco com bugs e falhas do seu jeito

QUANDO digitarmos o e-mail
    Click Element                   //*[@id="inputEmail"]
    ${email} =                      Generate Random String      10                  ${LOWER}${NUMBERS}
    Input Text                      //*[@id="inputEmail"]       ${email}@teste.com   
    Sleep                           2

E digitarmos a senha
    Click Element                   //*[@id="inputPassword"]
    ${password} =                   Generate Random String     10                   ${LETTERS}${NUMBERS}
    Input Text                      //*[@id="inputPassword"]   ${password}
    Sleep                           2

E clicarmos no botão Acessar
    Click Element                   //*[@id="btnAccess"]
    Sleep                           2

ENTÃO a mensagem "${msgError01}" será visível em tela
    Element Should Be Visible       //*[@id="__next"]/div/div[3]/div
    Element Text Should Be          //*[@id="modalText"]      ${msgError01}
    Sleep                           2
    Click Element                   //*[@id="btnCloseModal"]

ENTÃO a mensagem de erro "${msgError02}" será visível em tela
    Element Should Be Visible       //*[@id="__next"]/div/div[3]/div
    Element Text Should Be          //*[@id="modalText"]      ${msgError02}
    Sleep                           2
    Click Element                   //*[@id="btnCloseModal"]

QUANDO clicarmos no botão Acessar
    Click Element                   //*[@id="btnAccess"]
    Sleep                           2

QUANDO digitarmos um e-mail cadastrado
    Click Element                   //*[@id="inputEmail"]
    Input Text                      //*[@id="inputEmail"]       ${user2}
    Sleep                           2

E digitarmos uma senha válida
    Click Element                   //*[@id="inputPassword"]
    ${senha} =                      Input Text                      //*[@id="inputPassword"]    ${password2}
    Log To Console                  ${senha}
    Sleep                           2

ENTÃO o login será realizado com sucesso
    Should Be Title                 https://bugbank.netlify.app/home
    Element Text Should Be          //p[text()='bem vindo ao BugBank :)']
    Element Text Should Be          //*[@id="textBalance"][text()='Saldo em conta ']
