class LoginPage < BasePage
# class LoginPage

    def @efetuar_login
        find('input[name=username]').send_keys(string)
        find('input[name=pass]').send_keys(string2)
        click_button 'Entre'
    end  

    def validar_Login
        find('#navbarSupportedContent > ul > li:nth-child(1) > a').text
    end

end