#language: pt


#Especificar a documentação primeiramente dessa forma antes do sistema ficar pronto
Funcionalidade: Restaurantes    
    Para que eu possa saber quais os restaurantes disponíveis com o tempo de entrega e nota de avaliação
    Sendo um usuário que deseja pedir comida
    Posso acessar a lista de restaurantes

    Contexto: Lista de restaurantes
        Dado que tenho uma lista de restaurantes
        Quando acesso a lista de restaurantes

    
    Cenario: Todos os restaurantes
        Então vejo todas as opções disponíveis

    
    Cenario: Categorias
        Então cada restaurante deve exibir sua categoria

    
    Cenario: Tempo de entrega
        Então cada restaurante deve exibir o tempo de entrega

    
    Cenario: Nota de avaliação
        Então cada restaurante deve exibir sua nota de avaliação