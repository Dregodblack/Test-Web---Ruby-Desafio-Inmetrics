#language: pt
encoding: utf-8

Funcionalidade: Validar Cadastro de um novo usuario
@cadastrar_usuario
Cenário: Realizar o cadastro de um novo usuario
    Dado que estou na plataforma da Inmetrics na tela de cadastro
    Quando realizo o cadastro os dados de usuario <usuario>, senha <senha> e confirm_senha <confirm_senha>
    Então valido que foi cadastrado com sucesso, sendo direcionado para a tela de login <titulo>


# Funcionalidade: Validar Cadastro de 3 novos usuarios
# @cadastrar_Usuarios
# Esquema do Cenário: Realizar repetidamente o cadastro de novos usuarios
#   Dado que eu esteja na tela de cadastro
#   Quando preencho os campos da tela de cadastro sendo usuario <usuario>, senha <senha> e a confirm_senha <confirm_senha>
#   Então o sistema deve ser direcionado para a tela de login com o <titulo>
#   Exemplos:
#   |usuario          |senha  |confirm_senha  |titulo  |
#   |'Euhhhhhhhh'     |'123'  |'123'          |'Login' |
#   |'Tullllllll'     |'456'  |'456'          |'Login' |
#   |'Elesrrrrrr'     |'789'  |'789'          |'Login' |