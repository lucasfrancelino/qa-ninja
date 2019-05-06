#language:pt 

Funcionalidade: Qaul o prato do dia
    Para que eu possa ver a lista de cursos disponiveis 
    Sendo um aluno
    Posso buscar por um novo cursos

    @curso
    Cenário: Curso não encontrado
        Quando eu faço uma busca pelo termo "Selenium IDE"
        Então devo ver a seguinte notificação "Desculpe não encontramos o curso que procura =("