# adicionar.feature
Dado("que os produtos desejados é {string}") do |produto|
    @carrinho_bread.load
    sleep 5
    @produto_nome = produto
end
  
Dado("o valor do produto é de {string}") do |valor|
  @produto_valor = valor
end

Quando("eu adiciono {int} unidade\(s)") do |quantidade|
    quantidade.times do
        find(".menu-item-info-box", text: @produto_nome.upcase).find(".add-to-cart").click 
        sleep 5
    end
end

Entao("deve ser adicionado {int} unidade\\(s) deste item") do |quantidade|
  cart = find('#cart')
  expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}"
end
  
Entao("valor total de ser de {string}") do |valor_total|
  cart = find('#cart')
  total = cart.find('tr', text: 'Total:').find('td')
  expect(cart).to have_text valor_total
  sleep 5
end