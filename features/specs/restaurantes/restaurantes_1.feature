#language: pt

Funcionalidade: Restaurantes    
    Para que eu possa saber quais os restaurantes disponíveis com o tempo de entrega e nota de avaliação
    Sendo um usuário que deseja pedir comida
    Posso acessar a lista de restaurantes

    Contexto: Lista de restaurantes
        Dado que tenho uma lista de restaurantes
        Quando acesso a lista de restaurantes

    #Deixar o código mais enxuto quando o sistema já estiver construído
    #Cenário outline
    
    Esquema do Cenario: Restaurantes disponíveis
        Então cada restaurante deve ter <id> <nome> <categoria> <entrega> <avaliacao>

        #Esse esquema abre e fecha o browser toda vez para fazer uma verificação
        Exemplos:
            | id | nome             | categoria    | entrega      | avaliacao |
            | 0  | "Bread & Bakery" | "Padaria"    | "25 minutos" | 4.9       |
            | 1  | "Burger House"   | "Hamburgers" | "30 minutos" | 3.5       |
            | 2  | "Coffee Corner"  | "Cafeteria"  | "20 minutos" | 4.8       |
            | 3  | "Green Food"     | "Saudável"   | "40 minutos" | 4.1       |
            | 5  | "Tasty Treats"   | "Doces"      | "20 minutos" | 4.4       |

    @restaurante
    Cenario: Restaurantes disponíveis
        Dado que temos os seguintes Restaurantes
            | nome            | categoria   | entrega    | avaliacao |
            | Bread & Bakery  | Padaria     | 25 minutos | 4.9       |
            | Burger House    | Hamburgers  | 30 minutos | 3.5       |
            | Coffee Corner   | Cafeteria   | 20 minutos | 4.8       |
            | Green Food      | Saudável    | 40 minutos | 4.1       |
            | ICE CREAM       | Sorvetes    | 1 hora     | 0         |
            | Tasty Treats    | Doces       | 20 minutos | 4.4       |
        Quando acesso a lista de restaurantes
        Então devo ver todos os restaurates desta lista