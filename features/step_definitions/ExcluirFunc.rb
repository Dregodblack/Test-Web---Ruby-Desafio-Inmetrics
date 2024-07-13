Dado('que estou na tela de registros') do
    visit('')
    find('input[name=username]').send_keys('André Luis')
    find('input[name=pass]').send_keys('@123Luis#')
    click_button 'Entre'
end
  
Quando('excluo um funcionario cadastrado') do
    find('input[type=search]').send_keys('NinZiublack')
    find('#tabela tr:nth-child(1) .btn.btn-danger').click
end
  
Então('valido a mensagem {string} confirmando que foi removido com sucesso') do |mensagem|
    expect(find('.container-message').text).to have_content mensagem
end