#language: pt

Funcionalidade: Restaurantes    
    Para que eu possa saber quais os restaurantes disponíveis com o tempo de entrega e nota de avaliação
    Sendo um usuário que deseja pedir comida
    Posso acessar a lista de restaurantes

    Contexto: Lista de restaurantes
        Dado que tenho uma lista de restaurantes
        Quando acesso a lista de restaurantes

    @restaurante
    Cenario: Todos os restaurantes
        Então vejo todas as opções disponíveis

    @restaurante
    Cenario: Categorias
        Então cada restaurante deve exibir sua categoria

    @restaurante
    Cenario: Tempo de entrega
        Então cada restaurante deve exibir o tempo de entrega

    @restaurante
    Cenario: Nota de avaliação
        Então cada restaurante deve exibir sua nota de avaliação