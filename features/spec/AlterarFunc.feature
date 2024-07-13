#language: pt
encoding: utf-8

Funcionalidade: Editar dados de um funcionário
@Editar_dados_func
Cenário: Editar dados de um funcionário
    Dado que estou na tela de alteração de cadastro de um funcionario
    Quando altero os dados do funcionario
    Então valido a <mensagem> confirmando que foi alterado com sucesso
    Exemplos:
    |mensagem                                      |
    |'SUCESSO! Informações atualizadas com sucesso'|