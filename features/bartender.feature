#language: pt

Funcionalidade: Atendimento
    Para que eu possa receber uma sugestão de bebida do bartenter
    Sendo um cliente do PUB
    Posso informar meus dados pessoais

    Contexto:
        Dado que acessei o totem do bartenter

    @smoke
    Cenario: Maior de 18 anos

        Quando informo meu nome "Tony" e idade "18" anos
        Então devo ver a mensagem "Olá Tony, Aceita uma cerveja?"

    Cenario: Menor de 18 anos

        Quando informo meu nome "Peter" e idade "17" anos
        Então devo ver a mensagem "Olá Peter, Aceita uma limonada?"

    Cenario: Menor de 15 anos

        Quando informo meu nome "Jason" e idade "14" anos
        Então devo ver a mensagem "Olá Jason, você só pode beber leite, aceita?"

    Cenario: Nome não informado

        Quando informo meu nome "" e idade "14" anos
        Então devo ver a mensagem "Por favor informe seu nome."

    Cenario: Idade não informada

        Quando informo meu nome "Tony" e idade "" anos
        Então devo ver a mensagem "Por favor informe sua idade."

    Cenario: Idade deve ser numérico

        Quando informo meu nome "Tony" e idade "abc" anos
        Então devo ver a mensagem "Idade deve ser númerico."

    Cenario: Idade igual a zero

        Quando informo meu nome "Tony" e idade "0" anos
        Então devo ver a mensagem "Idade não pode ser menor ou igual a zero."