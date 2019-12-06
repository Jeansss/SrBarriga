Dado('possuir cadastro no site srbarriga') do
  steps %(
    Dado que eu esteja na home do srbarriga
    Quando acessar a aba novo usuário
    E preencher o campo nome com "provas" email e senha "123abc"
    Então validar o texto "Usuário inserido com sucesso"
  )
end

Quando('realizar login') do
  @acessar_cadastro.logar @email, @codigo
end
