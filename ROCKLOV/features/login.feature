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

    Cenario: Senha incorreta
        Quando submeto minhas credenciais com senha incorreta
        Então vejo a mensagem de alerta: Usuário e/ou senha inválidos.

    Cenário: Email não cadastrado
        Quando submeto minhas credenciais com email que não existe na Rocklov
        Então vejo a mensagem de alerta: Usuário e/ou senha inválidos.

    Cenario: Email incorreto
        Quando submeto minhas credenciais com email incorreto
        Então vejo a mensagem de alerta: Oops. Informe um email válido!

    Cenario: Email não informado
        Quando submeto minhas credenciais sem o email
        Então vejo a mensagem de alerta: Oops. Informe um email válido!

    Cenario: Senha não informada
        Quando submeto minhas credenciais sem a senha
        Então vejo a mensagem de alerta: ops. Informe sua senha secreta!