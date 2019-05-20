#language: pt

    Funcionalidade: Informacoes adiocionais
        Para que eu possa ver as informações adionais
        Sendo um usuário que escolheu um restaurante
        Posso ver a categoria, descrição detalhada e horario de funcionamento

        Contexto: Acessar restaurante
            Dado que acesso a lista de restaurantes
            Quando eu escolho um restaurante "Burger House"

        @detalhes @infos
         Cenario: Detalhes do restaurante
            Entao eu vejo as seguintes informaçoes adicionais:
                | categoria | Hamburgers                              |
                | descricao | 40 anos se especializando em trash food |
                | horarios  | Funciona todos os dias, de 10h às 22h   |