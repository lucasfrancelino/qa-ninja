#Alterar o link na env.rb para 'https://portal.qaninja.io'
class VisitarSite < SitePrism::Page
    set_url '/cursos'

    element :buca_input, '#searchtext'
    element :buscar_button, '#btn_form_search'
    
    def buscar_curso(termo)
        buca_input.set termo
        buscar_button.click
    end

end