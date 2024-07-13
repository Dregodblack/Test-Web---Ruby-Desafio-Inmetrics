#language: pt
encoding: utf-8

Funcionalidade: Cadastrar funcionario 
@cadastrar_func
Esquema do Cenario: Cadastrar um funcionario
  Dado que esteja na tela de cadastro de funcionario
  Quando preencher os campos de cadastro
  Entao deverá ser exibir uma mensagem <mensagem> confirmando que foi realizado com Sucesso
  Exemplos:
  |mensagem                                 |
  |'SUCESSO! Usuário cadastrado com sucesso'|