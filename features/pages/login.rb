class Login < SitePrism::Page
  set_url 'https://srbarriga.herokuapp.com/'

  element :btn_entrar, '.btn-primary'
  element :a_novo_usuario, 'a[href*=cadastro]'
  element :input_email, '#email'
  element :input_senha, '#senha'
  element :a_sair, 'a[href*=logout]'

  # método de realizar login passando email e senha.
  def logar(email, codigo)
    input_email.set email
    input_senha.set codigo
    btn_entrar.click
  end
end
