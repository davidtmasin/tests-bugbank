
## Funcionalidade 1: Login

### Cenário 01 - Efetuar login com credenciais inválidas

**DADO** que estamos na página inicial do BugBank

**QUANDO** digitarmos o e-mail

**E** digitarmos a senha

**E** clicarmos no botão Acessar

**ENTÃO** a mensagem "Usuário ou senha inválido. Tente novamente ou verifique suas informações" será visível em tela

-----

### Cenário 02 - Efetuar login com credenciais válidas

**DADO** que estamos na página inicial do BugBank

**QUANDO** digitarmos o e-mail

**E** digitarmos a senha

**E** clicarmos no botão Acessar

**ENTÃO** o login será realizado com sucesso

-----

### Cenário 03 - Efetuar login sem informar a senha

**DADO** que estamos na página inicial do BugBank

**QUANDO** digitarmos o e-mail

**E** clicarmos no botão Acessar

**ENTÃO** a mensagem "Usuário e senha precisam ser preenchidos" será visível em tela

-----

### Cenário 04 - Efetuar login sem informar o e-mail

**DADO** que estamos na página inicial do BugBank

**E** digitarmos a senha

**QUANDO** clicarmos no botão Acessar

**ENTÃO** a mensagem "Usuário e senha precisam ser preenchidos" será visível em tela

-----

### Cenário 05 - Efetuar login sem informar as credenciais

**DADO** que estamos na página inicial do BugBank

**QUANDO** clicarmos no botão Acessar

**ENTÃO** a mensagem "Usuário e senha precisam ser preenchidos" será visível em tela