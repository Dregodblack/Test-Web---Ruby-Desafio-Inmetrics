Dado('que esteja na tela inicial') do
  visit('')
  # binding.pry
end

Quando('realizo o login com usuario {string} e senha {string}') do |usuario, senha|
  @Pagina.funcao_Login.efetuar_login(usuario, senha)
# Quando('realizo o login com usuario {string} e senha {string}') do |string, string2|
#   @Pagina.funcao_Login.LoginPage.efetuar_login(string, string2)
end

Entao('valido que o login foi realizado com sucesso sendo direcionado para outra tela') do
  expect(find(@pagina.Função_Login.validar_Login).to have_content 'FUNCIONÁRIOS'
end

# -----------------------------------------------

Quando('busco pelo elemento Login') do
  @texto_encontrado = find("#navbarSupportedContent > ul > li:nth-child(2) > a").text
  # @texto_encontrado = find          xpath=//li[@class='nav-item'][2]//a[@class='nav-link text-uppercase font-weight-bold']
end

Então('valido que a tela de Login é exibida com sucesso') do
  expect(@texto_encontrado).to eql 'LOGIN'
end