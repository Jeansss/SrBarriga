class CadastroConta < SitePrism::Page
  element :a_contas, '.dropdown-toggle'
  element :a_adicionar, 'a[href*=addConta]'
  element :input_nome, '#nome'
  element :btn_salvar, '.btn-primary'
  elements :td_conta, 'tbody tr td'

  # método para adicionar conta
  def adicionar_conta(name)
    a_adicionar.click
    input_nome.set name
    btn_salvar.click
  end
end
