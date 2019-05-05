#language:pt 

Funcionalidade: Qaul o prato do dia
    Queremos saber qual o prato do dia na capital paulista

    # Cenario: Hoje é dia de Virado a Paulista
    #     Dado que hoje é "segunda feira"
    #     Quando eu pergunto qual é o prato do dia
    #     Entao a resposta deve ser "Virado a Paulista"

    # Cenario: Hoje é dia de Dobradinha
    #     Dado que hoje é "terça feira"
    #     Quando eu pergunto qual é o prato do dia
    #     Entao a resposta deve ser "Dobradinha"

    # Cenario: Hoje é dia de Feijoada
    #     Dado que hoje é "quarta feira"
    #     Quando eu pergunto qual é o prato do dia
    #     Entao a resposta deve ser "Feijoada"

#trabalhando com multiplos cenários, dado que o comportamento deles é o mesmo.
#<dia> e <resposta> são placeholders
#scenario outline em inglês
     Esquema do Cenario: Prato do dia
        Dado que hoje é <dia>
        Quando eu pergunto qual é o prato do dia 
        Entao a resposta deve ser <resposta>
        Exemplos: 
            | dia             | resposta            |
            | "segunda feira" | "Virado a Paulista" |
            | "terça feira"   | "Dobradinha"        |
            | "quarta feira"  | "Feijoada"          |
            | "quinta feira"  | "Macarronada"       |
            | "sexta feira"   | "Filé de merluza"   |
            | "sábado"        | "Veja o cardapio"   |
            | "domingo"       | "Fechado"           |
            | "XPTO"          | "Dia inválido"      |
            | "12345"         | "Dia inválido"      |