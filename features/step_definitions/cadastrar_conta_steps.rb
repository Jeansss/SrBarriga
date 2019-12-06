Dado('que eu esteja logado no site') do
  steps %(
    Dado possuir cadastro no site srbarriga
    Quando realizar login
    Então validar o texto "Bem vindo, provas!"
  )
end

Quando('acessar o menu contas') do
  @cadastro_conta.a_contas.click
end

Quando('adicionar uma conta') do
  @cadastro_conta.adicionar_conta @name
end
