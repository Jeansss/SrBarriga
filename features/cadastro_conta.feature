#utf-8
#language: pt

Funcionalidade: Cadastrar conta
  Eu como usuário
  Quero cadastrar uma conta
  Para validar a integridade do site
  
  @cadastro_conta
  Cenário: Cadastro de Conta
    Dado que eu esteja logado no site
    Quando acessar o menu contas
    E adicionar uma conta
    Então validar o texto "Conta adicionada com sucesso!"

    
