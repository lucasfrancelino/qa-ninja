Dado("que hoje é {string}") do |dia|
    @hoje = dia
end
 
Quando("eu pergunto qual é o prato do dia") do
   @prato_do_dia = PratoDoDia.new
   @resposta_obtida = @prato_do_dia.prato_dia(@hoje)
end
  
Entao("a resposta deve ser {string}") do |resposta_esperada|
    expect(@resposta_obtida).to eql resposta_esperada
end

#Integrando Capybara ao Cucumber
Quando("eu faço uma busca pelo termo {string}") do |termo|
    @visitar_site = VisitarSite.new
    @visitar_site.load
    @visitar_site.buscar_curso(termo)
end

Então("devo ver a seguinte notificação {string}") do |notificacao|
    expect(page).to have_text notificacao
end

#Restaurantes, simulando  Ifood
Dado("que tenho uma lista de restaurantes") do
    @restaurant_data = [
        { name: 'Bread & Bakery', category: 'Padaria', delivery_time: '25 minutos', rating: 4.9},
        { name: 'Burger House', category: 'Hamburgers', delivery_time: '30 minutos', rating: 3.5},
        { name: 'Coffee Corner', category: 'Cafeteria', delivery_time: '20 minutos', rating: 4.8},
        { name: 'Green Food', category: 'Saudável', delivery_time: '40 minutos', rating: 4.1},
        { name: 'Ice Cream', category: 'Sorvetes', delivery_time: '1 hora', rating: 0},
        { name: 'Tasty Treats', category: 'Doces', delivery_time: '20 minutos', rating: 4.4}
    ]
end

Quando("acesso a lista de restaurantes") do
    @restaurente = Restaurante.new
    @restaurente.load
end
  
Então("vejo todas as opções disponíveis") do
    @restaurente.visitar_restaurante
end
  
Então("cada restaurante deve exibir sua categoria") do
    #método all em uma nova variavel
    restaurants = all('.restaurant-item')

    #criei um foreach para percorrer o array (restaurant_data) e trazer as informações que eu preciso
    @restaurant_data.each_with_index do |value, index|
        sleep 2
        expect(restaurants[index]).to have_text value[:category] #verificando categoria (category)
    end
end
  
Então("cada restaurante deve exibir o tempo de entrega") do
    #método all em uma nova variavel
    restaurants = all('.restaurant-item')

    #criei um foreach para percorrer o array (restaurant_data) e trazer as informações que eu preciso
    @restaurant_data.each_with_index do |value, index|
        sleep 2
        expect(restaurants[index]).to have_text value[:delivery_time]#verificando tempo de entrega (delivery_time)
    end
end
  
Então("cada restaurante deve exibir sua nota de avaliação") do
    #método all em uma nova variavel
    restaurants = all('.restaurant-item')

    #criei um foreach para percorrer o array (restaurant_data) e trazer as informações que eu preciso
    @restaurant_data.each_with_index do |value, index|
        sleep 2
        expect(restaurants[index]).to have_text value[:rating]#verificando nota de avaliação (rating)
    end
end