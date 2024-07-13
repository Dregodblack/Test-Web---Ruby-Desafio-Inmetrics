Dado('que estou na plataforma da Inmetrics na tela de cadastro') do
    visit('')
    @Tela_de_Login = find('span[class="login100-form-title p-b-1"]').text
    find('a[class="txt2 bo1"]').click
    @Tela_de_Cadastro = find('span[class="login100-form-title"]').text
    expect(@Tela_de_Cadastro).to have_content 'Cadastre-se'
end
  
Quando('realizo o cadastro os dados de usuario <usuario>, senha <senha> e confirm_senha <confirm_senha>') do
    # fill_in 'session_key', with: (ta ta ta tatá)
    # fill_in 'input[name=username]', with: string
    find('input[name=username]').send_keys('Luis Carlos')
    find('input[name=pass]').send_keys('#@afd4')
    find('input[name=confirmpass]').send_keys('#@afd4')
    click_button 'Cadastrar'
    @Text_login = find('.login100-form-title.p-b-1').text
end

Então('valido que foi cadastrado com sucesso, sendo direcionado para a tela de login <titulo>') do 
    expect(@Text_login).to have_content 'Login'
end