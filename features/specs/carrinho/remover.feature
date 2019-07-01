#language: pt

    Funcionalidade: Adicionar ao carrinho
        Para que eu possa manter meu carrinho apenas com itens desejados
        Sendo um cliente que desistiu de um ou mais produtos
        Posso remover itens do meu carrinho

        @carrinho
        Cenario: Remover varios itens
            Dado que eu tenho os seguintes itens no carrinho:
                |nome|preco|
                |Cup Cake|R$ 8,70|
                |Donut|R$ 2,50|
                |Pão Artesanal Italiano|R$ 15,90|
            Quando eu removo somente o item
            Entao valor total de ser de "R$ 18,40"

        Cenario: Remover todos os itens 
            Dado que eu tenho os seguintes itens no carrinho:
                |nome|preco|
                |Cup Cake|R$ 8,70|
                |Donut|R$ 2,50|
                |Pão Artesanal Italiano|R$ 15,90|
            Quando eu removo somente os itens
            Entao vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"