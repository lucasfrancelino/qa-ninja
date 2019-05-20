#language: pt

    Funcionalidade: cardápio
        Para que eu possa decidir o que comer
        Sendo um usuário que escolheu um restaurante
        Posso acessar o cardápio

        Contexto: Acessar restaurante
            Dado que acesso a lista de restaurantes
            Quando eu escolho um restaurante "Burger House"

        @cardapio
        Cenario: Produto
            Entao vejo os itens disponiveis no cardapio:
                | produto        | descricao                      | preco    |
                | Classic Burger | O clássico. Não tem como errar.| R$ 18,50 |
                | Batatas Fritas | Batatas fritas crocantes       | R$ 5,50  |
                | Refrigerante   | O refri mais gelado da cidade  | R$ 4,50  |