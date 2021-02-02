#language:pt

Funcionalidade: Cadastro
             Sendo um muusico que possui equipamentos musicais
            Quero fazer o meu cadastro no Rocklov
            Para que eu possa disponibilizá-los para locação

        @cadastro
        Cenário: Fazer cadastro

            Dado que acesso a página de cadastro
             Quando submeto o seguinte formulário do cadastro
                  | nome       | email                      | senha |
                  | Bruna Rosa | bruninha20_468@hotmail.com | 1234  |
             Então sou redirecionado para o Dashboard

        @sem_nome
        Cenário: Submeter cadastro sem o nome

            Dado que acesso a página de cadastro
             Quando submeto o meu cadastro sem o nome
             Então vejo a mensagem de alerta: "Oops. Informe seu nome completo!"

        @sem_email
        Cenário: Submeter cadastro sem o email

            Dado que acesso a página de cadastro
             Quando submeto o meu cadastro sem o email
             Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

        @email_invalido
        Cenário: Submeter cadastro com o email incorreto

            Dado que acesso a página de cadastro
             Quando submeto o meu cadastro com email incorreto
             Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

        @sem_senha
        Cenário: Submeter cadastro sem a senha

            Dado que acesso a página de cadastro
             Quando submeto o meu cadastro sem a senha
             Então vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"