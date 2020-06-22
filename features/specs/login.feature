#language: pt

Funcionalidade: Login
    COMO um usuário previamente cadastrado
    QUERO fazer login no site http://automationpractice.com
    PARA acessar a minha conta

@smoke @login_valido
Esquema do Cenário: Login válido
    Dado que eu seja um usuário cadastrado:
        | email    | <email>    |
        | password | <password> |
        | name     | <name>     |
    Quando eu efetuo login no site
    Então devo ser autenticado com sucesso

    Exemplos:
        | email              | password | name          |
        | testeame@teste.com | 12345678 | Fabiana Mello |

@login_invalido
Esquema do Cenário: Login inválido
    Dado que acesse a página de login
    Quando efetuo login com os seguintes dados inválidos:
        | email    | <email>    |
        | password | <password> |
    Então devo ver a mensagem de alerta "<alert_message>"

    Exemplos:
        | email              | password | alert_message              |
        | teste              | 12345678 | Invalid email address.     |
        | testeame@teste.com | 88888888 | Authentication failed.     |
        |                    | 12345678 | An email address required. |
        | testeame@teste.com |          | Password is required.      |
        |                    |          | An email address required. |
