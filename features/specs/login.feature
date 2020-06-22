#language: pt

Funcionalidade: Login
    COMO um usuário previamente cadastrado
    QUERO fazer login no site http://automationpractice.com/
    PARA acessar a minha conta

@smoke @login
Esquema do Cenário: Acesso válido
    Dado que eu seja um usuário cadastrado:
        | email    | <email>    |
        | password | <password> |
        | name     | <name>     |
    Quando eu efetuo login no site
    Então devo ser autenticado com sucesso

    Exemplos:
        | email              | password | name          |
        | testeame@teste.com | 12345678 | Fabiana Mello |