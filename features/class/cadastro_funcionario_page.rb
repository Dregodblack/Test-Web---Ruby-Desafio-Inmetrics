class CadastroFunc_Page < BasePage

  def efetuar_cadastro_funcionario
    click_link 'Novo Funcionário'
    # find('#inputNome').send_keys(Faker::Name.name)
    find('#inputNome').send_keys(Ningodblack)
    find('#cpf').send_keys(Faker::IDNumber.brazilian_citizen_number(formatted: true))
    find('#slctSexo').send_keys('Feminino')
    # find('#inputAdmissao').send_keys(Time.now.strftime('%d/%m/%Y'))
    find('#inputAdmissao').send_keys('23/04/1994')
    find('#inputCargo').send_keys('Programador')
    # find('#dinheiro').send_keys(Faker::Number.number(digits: 7))
    find('#dinheiro').send_keys(658950)
    # find('#clt').click
    find('#pj').click
    find('.cadastrar-form-btn').click
  end

  def validar_cadastro_funcionario
    find('.container-message').text
  end
end