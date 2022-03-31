*** Settings ***
Library            String
Library            SeleniumLibrary
Library            ScreenCapLibrary

*** Variable ***
${BROWSER}         chrome
${baseURL}         https://bugbank.netlify.app/

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