Dado('que esteja na tela de cadastro de funcionario') do
    visit('')
    find('input[name=username]').send_keys('André Luis')
    find('input[name=pass]').send_keys('@123Luis#')
    click_button 'Entre'
    click_link 'Novo Funcionário'
end
  
Quando('preencher os campos de cadastro') do
#   find('#inputNome').send_keys(Faker::Name.name)
  find('#inputNome').send_keys('NinZiublack')
#   find('#cpf').send_keys(faker::IDNumber.brazilian_citizen_number(formatted: true))
  find('#cpf').send_keys('042.119.972-54')
  find('#slctSexo').send_keys('Feminino')
  find('#inputAdmissao').send_keys(Time.now.strftime('%d/%m/%Y'))
  find('#inputCargo').send_keys('Programador')
#   find('#dinheiro').send_keys(Faker::Number.number(digits: 7))
  find('#dinheiro').send_keys(658950)
#   find('#clt').click
  find('#pj').click
  find('.cadastrar-form-btn').click
end
  
Entao('deverá ser exibir uma mensagem {string} confirmando que foi realizado com Sucesso') do |mensagem|
  expect(find('.container-message').text).to have_content mensagem
end