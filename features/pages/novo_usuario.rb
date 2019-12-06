class NovoUsuario < SitePrism::Page
  element :input_nome, '#nome'
  element :input_email, '#email'
  element :input_senha, '#senha'
  element :input_cadastrar, '.btn-primary'
  element :div_mensagem, '.alert'

  # preenchendo dados para realizar cadastro de usuário
  def preencher_dados(nome, email, senha)
    input_nome.set nome
    input_email.set email
    input_senha.set senha
    input_cadastrar.click
  end
end
