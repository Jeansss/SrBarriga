#utf-8
#language: pt

Funcionalidade: Realizar login
  Eu como usuário
  Quero realizar login no site srbarriga
  Para validar meu acesso
  
  @login
  Cenário: Login de usuário com dados validos
    Dado possuir cadastro no site srbarriga
    Quando realizar login 
    Então validar o texto "Bem vindo, provas!"
