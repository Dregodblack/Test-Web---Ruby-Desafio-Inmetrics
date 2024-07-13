#language: pt
encoding: utf-8

Funcionalidade: Excluir funcionário
@Excluir_func
Esquema do Cenário: Excluir funcionário
    Dado que estou na tela de registros
    Quando excluo um funcionario cadastrado
    Então valido a mensagem <mensagem> confirmando que foi removido com sucesso
    Exemplos:
    |mensagem                                   |
    |'SUCESSO! Funcionário removido com sucesso'|