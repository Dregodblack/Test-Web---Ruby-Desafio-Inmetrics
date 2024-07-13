class CadastroUsuario_Page < BasePage
 
  def efetuar_cadastro_usuario(usuario, senha, confirmar_senha)
    find('.txt2.bo1').click
    find('input[name=username]').send_keys(usuario)
    find('input[name=pass]').send_keys(senha)
    find('input[name=confirmpass]').send_keys(confirmar_senha)
    # binding.pry
    click_button 'Cadastrar'
  end
 
end