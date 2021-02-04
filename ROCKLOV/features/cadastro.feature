#language:pt

Funcionalidade: Cadastro
     Sendo um musico que possui equipamentos musicais
     Quero fazer o meu cadastro no Rocklov
     Para que eu possa disponibilizá-los para locação

     @cadastro
     Cenário: Fazer cadastro

            Dado que acesso a página de cadastro
          Quando submeto o seguinte formulário do cadastro
               | nome       | email                      | senha |
               | Bruna Rosa | bruninha40_468@hotmail.com | 1234  |
           Então sou redirecionado para o Dashboard

     @cadastro
     Esquema do Cenário: Tentativa de Cadastro

            Dado que acesso a página de cadastro
          Quando submeto o seguinte formulário do cadastro
               | nome         | email         | senha         |
               | <nome_input> | <email_input> | <senha_input> |
           Então vejo a mensagem de alerta: "<mensagem_output>"

          Exemplos:
               | nome_input | email_input                | senha_input | mensagem_output                  |
               |            | bruninha40_468@hotmail.com | abc1234     | Oops. Informe seu nome completo! |
               | Bruna Rosa |                            | abc1234     | Oops. Informe um email válido!   |
               | Bruna Rosa | bruna*hotmail.com          | abc1234     | Oops. Informe um email válido!   |
               | Bruna Rosa | bruna&hotmail.com          | abc1234     | Oops. Informe um email válido!   |
               | Bruna Rosa | bruninha40_468@hotmail.com |             | Oops. Informe sua senha secreta! |
