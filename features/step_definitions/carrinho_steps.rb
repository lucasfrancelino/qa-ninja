# adicionar.feature
Dado("que os produtos desejados é {string}") do |produto|
  @carrinho_bread.load
  sleep 5
  @produto_nome = produto
end
  
Dado("o valor do produto é de {string}") do |valor|
  @produto_valor = valor
end

Quando("eu adiciono {int} unidade\\(s)") do |quantidade|
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

Dado("que os produtos desejados sao:") do |table|
  @carrinho_bread.load
  sleep 2
  @product_list = table.hashes
end

Quando("eu adiciono todos os itens") do
  @product_list.each do |p| #foreach da minha tabela que está renomeada como product_list.
    p['quantidade'].to_i.times do #times repete o que está na minha coluna de quantidade 
      find(".menu-item-info-box", text: p["nome"].upcase).find(".add-to-cart").click
    end
  end
end

Entao("vejo todos os itens no carrinho") do
  cart = find("#cart")
  @product_list.each do |p|
    expect(cart).to have_text "(#{p["quantidade"]}x) #{p['nome']}"
  end
end

#Remover itens do carrinho (voltar na aula "Bota casaco! Identificando elementos pelo indice")
Dado("que eu tenho os seguintes itens no carrinho:") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("eu removo somente o item") do
  pending # Write code here that turns the phrase above into concrete actions
end