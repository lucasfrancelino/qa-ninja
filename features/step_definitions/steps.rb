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