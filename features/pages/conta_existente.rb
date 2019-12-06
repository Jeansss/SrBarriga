class ContaExistente < SitePrism::Page
  element :input_nome, '#nome'
  element :input_email, '#email'
  element :input_senha, '#senha'
  element :input_cadastrar, '.btn-primary'
  element :div_mensagem, '.alert'
end
