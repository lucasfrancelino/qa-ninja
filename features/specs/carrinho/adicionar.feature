#language: pt

    @bread_bakery
    Funcionalidade: Adicionar ao carrinho
        Para que eu possa finalizar uma compra
        Sendo um cliente que ja decidiu o que deseja comer 
        Posso adicionar itens ao meu carrinho

        
        Cenario: Adicionar 1 unidade
            Dado que os produtos desejados é "Cup Cake"
            E o valor do produto é de "R$ 8,70"
            Quando eu adiciono 1 unidade(s)
            Entao deve ser adicionado 1 unidade(s) deste item
            E valor total de ser de "R$ 8,70"

        @temp
        Cenario: Adicionar 2 unidade
            Dado que os produtos desejados é "Donut"
            E o valor do produto é de "R$ 2,50"
            Quando eu adiciono 3 unidade(s)
            Entao deve ser adicionado 3 unidade(s) deste item
            E valor total de ser de "R$ 7,50"


        Cenario: Adicionar varios itens
            Dado que os produtos desejados sao:
                | nome                   | preco    |
                | Cup Cake               | R$ 8,70  |
                | Donut                  | R$ 2,50  |
                | Pão Artesanal Italiano | R$ 15,90 |
            Quando eu adiciono todos os itens
            Entao vejo todos os itens no carrinho
            E valor total de ser de "R$ 27,10"