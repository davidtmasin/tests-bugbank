
# Funcionalidade 1: Login

## Cenário 01 - Efetuar login com credenciais inválidas

**DADO** que estamos na página inicial do BugBank

**QUANDO** digitarmos o e-mail

**E** digitarmos a senha

**E** clicarmos no botão Acessar

**ENTÃO** a mensagem "Usuário ou senha inválido. Tente novamente ou verifique suas informações" será visível em tela

-----

## Cenário 02 - Efetuar login com credenciais válidas

**DADO** que estamos na página inicial do BugBank

**QUANDO** digitarmos um e-mail cadastrado

**E** digitarmos uma senha válida

**E** clicarmos no botão Acessar

**ENTÃO** o login será realizado com sucesso

-----

## Cenário 03 - Efetuar login sem informar a senha

**DADO** que estamos na página inicial do BugBank

**QUANDO** digitarmos o e-mail

**E** clicarmos no botão Acessar

**ENTÃO** a mensagem "Usuário e senha precisam ser preenchidos" será visível em tela

-----

## Cenário 04 - Efetuar login sem informar o e-mail

**DADO** que estamos na página inicial do BugBank

**E** digitarmos a senha

**QUANDO** clicarmos no botão Acessar

**ENTÃO** a mensagem "Usuário e senha precisam ser preenchidos" será visível em tela

-----

## Cenário 05 - Efetuar login sem informar as credenciais

**DADO** que estamos na página inicial do BugBank

**QUANDO** clicarmos no botão Acessar

**ENTÃO** a mensagem "Usuário e senha precisam ser preenchidos" será visível em tela

-----

# Funcionalidade 2: Cadastro

## Cenário 01 - Criando cadastro com saldo ativo

**DADO** que estamos na página inicial do BugBank

**E** clicamos no botão "Registrar"

**E** informamos um e-mail

**E** informamos um nome

**E** informamos uma senha

**E** confirmamos esta senha

**E** ativamos a opção de "Criar conta com saldo ?"

**QUANDO** clicarmos no botão "Cadastrar"

**ENTÃO** a conta será criada com sucesso

**E** o número da conta aparece em tela

**E** o saldo será de "R$ 1.000,00"

-----

## Cenário 02 - Criando cadastro com saldo inativo

**DADO** que estamos na página inicial do BugBank

**E** clicamos no botão "Registrar"

**E** informamos um e-mail

**E** informamos um nome

**E** informamos uma senha

**E** confirmamos esta senha

**QUANDO** clicarmos no botão "Cadastrar"

**ENTÃO** a conta será criada com sucesso

**E** o número da conta aparece em tela

**E** o saldo será de "R$ 0,00"

-----

## Cenário 03 - Criando cadastro apenas com email

**DADO** que estamos na página inicial do BugBank

**E** clicamos no botão "Registrar"

**E** informamos um e-mail

**QUANDO** clicarmos no botão "Cadastrar"

**ENTÃO** a mensagem "Nome não pode ser vazio" será apresentada

-----

## Cenário 04 - Criando cadastro apenas com nome

**DADO** que estamos na página inicial do BugBank

**E** clicamos no botão "Registrar"

**E** informamos um nome

**QUANDO** clicarmos no botão "Cadastrar"

**ENTÃO** a mensagem de alerta 'Email não ser vazio' será apresentada

-----

## Cenário 05 - Criando cadastro apenas com nome e email

**DADO** que estamos na página inicial do BugBank

**E** clicamos no botão "Registrar"

**E** informamos um nome

**E** informamos um e-mail

**QUANDO** clicarmos no botão "Cadastrar"

**ENTÃO** surge a mensagem de alerta "Senha não ser vazio"

-----

## Cenário 06 - Criando cadastro sem confirmar a senha

**DADO** que estamos na página inicial do BugBank

**E** clicamos no botão "Registrar"

**E** informamos um nome

**E** informamos um e-mail

**E** informamos uma senha

**QUANDO** clicarmos no botão "Cadastrar"

**ENTÃO** surge o alerta "Confirmar senha não pode ser vazio"

-----

## Cenário 07 - Criando cadastro com senha diferente do confirmar senha

**DADO** que estamos na página inicial do BugBank

**E** clicamos no botão "Registrar"

**E** informamos um e-mail

**E** informamos um nome

**E** informamos uma senha

**E** digitamos uma senha diferente no campo confirmar senha

**QUANDO** clicarmos no botão "Cadastrar"

**ENTÃO** será apresentada a mensagem "As senhas não são iguais"


