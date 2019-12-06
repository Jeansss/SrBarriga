#utf-8
#language: pt

Funcionalidade: Cadastrar novo usuário
  Eu como pessoa que quer criar um usuário
  Quero realizar um cadastro no site
  Para ter acesso ao mesmo

  @cadastro_usuario
  Cenário: Cadastro de novo usuário
    Dado que eu esteja na home do srbarriga
    Quando acessar a aba novo usuário
    E preencher o campo nome com "provas" email e senha "123abc"
    Então validar o texto "Usuário inserido com sucesso"

  @cadastro_usuario_existente
  Cenário: Cadastro de usuário já existente
    Dado ter uma conta já cadastrada 
    Quando acessar a aba novo usuário
    E preencher com dados já existentes
    Então  validar o texto "Endereço de email já utilizado"
    
