#language: pt
encoding: utf-8


# Funcionalidade: validação da tela de Login
# @validacao_tela_login
# Cenário: Validar palavra Login na tela Inicial
#   Dado que eu esteja na tela Inicial
#   Quando busco pelo elemento Login
#   Então valido que a tela de Login é exibida com sucesso


Funcionalidade: Realizar um login
@realizar_login
Cenario: Realizar um login
  Dado que esteja na tela inicial 
  Quando realizo o login com usuario <usuario> e senha <senha>
  # Quando realizo o login com usuario "André Luis" e senha "@123Luis#"
  Entao valido que o login foi realizado com sucesso sendo direcionado para outra tela
  # Exemplos:
  # |usuario     |senha      |
  # |'André Luis'|'@123Luis#'|
