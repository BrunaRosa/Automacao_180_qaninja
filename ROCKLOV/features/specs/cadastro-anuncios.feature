#language:pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuario cadastrado no Rocklov que possui equipamentos musicais
    Quero cadstrar meus equipamentos
    Para que eu possa disponibilizados para locação

    Cenário: Novo equipamento
        Dado que eu tenho o seguinte equipamento
            |thumb      | fender-sb.jpg |
            |nome       | Fender Strato |
            |categoria  | Cordas        |
            |preco      | 200           |
        Quando submeto o cadastrado desse item
        Então devo ver esse item no meu Dashboard