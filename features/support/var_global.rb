class Variaveis
    
    def esperar
      sleep(5)
    end
    
    # def mostrar_menu
    #   page.has_selector?('#tdMenu')
    #   click_button '//input[@id='btnMenu']'
    #   sleep(5)
    # end

    def clicar_no_elemento(elemento)
      find(elemento).click
    end

    def validar_elemento(selector, elemento)
       @var_web = find("#{selector}").text
        expect(@var_web).to eql "#{elemento}"
        # have_content 'selector'
    end

  #   def validar_page_SessionExisting
  #     if page.has_xpath?("//input[@value='Terminate existing session']", :visible => :all)
  #         click_button 'Terminate existing session'
  #     else 
  #         # return puts('Elemento não encontrado!')
  #         page.has_selector?('#maincontent > h1')
  #         click_button 'Continue'
  #     end

  #     page.has_selector?('#maincontent > h1')
  #     click_button 'Continue'
  # end


end  