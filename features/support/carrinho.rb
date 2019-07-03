class CarrinhoBreadBakery < SitePrism::Page
    set_url '/restaurants/bread-bakery/menu'

    element :buca_input, '#searchtext'
    element :buscar_button, '#btn_form_search'
    
    def buscar_curso(termo)
        buca_input.set termo
        buscar_button.click
    end
end