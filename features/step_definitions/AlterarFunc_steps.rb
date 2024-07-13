Dado('que estou na tela de alteração de cadastro de um funcionario') do
    visit('')
    find('input[name=username]').send_keys('Test User')
    find('input[name=pass]').send_keys('@123Luis#')
    click_button 'Entre'
    find('input[type=search]').send_keys('Test User')
    find('#tabela tr:nth-child(1) .btn.btn-warning').click
end

Quando('altero os dados do funcionario') do
    find('#inputCargo').send_keys(' Jr')
    # find('#clt').click
    find('#pj').click
    find('input.cadastrar-form-btn').click
end

Então('valido a {string} confirmando que foi alterado com sucesso') do |mensagem|
    expect(find('div.container-message').text).to have_content mensagem
end