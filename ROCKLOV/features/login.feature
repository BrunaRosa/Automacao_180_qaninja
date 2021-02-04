#language:pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    Contexto:
        Dado que acesso a página principal

    @login
    Cenario: Login do usuário
        Quando submeto minhas credenciais com "bruninha20_468@hotmail.com" e "1234"
        Então sou redirecionado para o Dashboard

    @login
    Esquema do Cenario: Tentar logar
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input                | senha_input | mensagem_output                  |
            | bruninha20_468@yahooo.com  | abc1234     | Usuário e/ou senha inválidos.    |
            | vanessa@404.com            | abc1234     | Usuário e/ou senha inválidos.    |
            | bruna$aol.com              | abc1234     | Oops. Informe um email válido!   |
            |                            | abc1234     | Oops. Informe um email válido!   |
            | bruninha20_468@hotmail.com |             | Oops. Informe sua senha secreta! |

