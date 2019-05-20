Dado("que acesso a lista de restaurantes") do
    @cardapio = Cardapio.new
    @cardapio.load
end

Quando("eu escolho um restaurante {string}") do |restaurante|
    sleep 5
    find('.restaurant-item', text: restaurante.upcase).click
end
  
Entao("vejo os itens disponiveis no cardapio:") do |table|
   itens = all('.menu-item-info-box')

   product_data = table.hashes

   product_data.each_with_index do |value, index|
    expect(itens[index]).to have_text value['produto'].upcase
    expect(itens[index]).to have_text value['descricao']
    expect(itens[index]).to have_text value['preco']
    sleep 2
   end
end

Entao("eu vejo as seguintes informaçoes adicionais:") do |table|
    infos = table.rows_hash
    detail = find('#detail')
    expect(detail).to have_text infos["categoria"]
    expect(detail).to have_text infos["descricao"]
    expect(detail).to have_text infos["horarios"]
end