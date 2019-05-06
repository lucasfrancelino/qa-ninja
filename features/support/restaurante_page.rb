#Alterar o link na env.rb para 'https://portal.qaninja.io'
class Restaurante < SitePrism::Page
    set_url '/restaurants'

    #esse elemento são todos os restaurantes que estão sendo exibidos na página
    element :elementos_icone, '.restaurant-item'
    
    def visitar_restaurante
       all('.restaurant-item') #método all devolve uma coleção de elementos (array)
    end
end