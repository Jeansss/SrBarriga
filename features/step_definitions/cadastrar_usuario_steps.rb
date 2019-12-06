Dado('que eu esteja na home do srbarriga') do
  # carregando página, aguardando botão entrar ficar visivel, e validando que ele está na página.
  @acessar_cadastro.load
  @acessar_cadastro.wait_until_btn_entrar_visible
  expect(@acessar_cadastro).to have_btn_entrar
end

Quando('acessar a aba novo usuário') do
  # acessando aba de novo usuario, e aguardando o campo nome ficar visivel
  @acessar_cadastro.a_novo_usuario.click
  @cadastro_usuario.wait_until_input_nome_visible
  expect(@cadastro_usuario).to have_input_nome
end

E('preencher o campo nome com {string} email e senha {string}') do |nome, senha|
  @codigo = senha
  @cadastro_usuario.preencher_dados nome, @email, senha
end

Então('validar o texto {string}') do |mensagem|
  # validando mensagens de alerta das páginas, validando a mensagem, e se a mensagem for referente ao cadastro de conta realiza a validação do nome da conta cadastrada com a conta que foi passada
  @cadastro_usuario.wait_until_div_mensagem_visible
  expect(@cadastro_usuario.div_mensagem.text).to eql mensagem
  expect(@cadastro_conta.td_conta[0].text).to eql @name if @cadastro_usuario.div_mensagem.text.eql?('Conta adicionada com sucesso!')
end

Dado('ter uma conta já cadastrada') do
  steps %(
    Dado que eu esteja na home do srbarriga
    Quando acessar a aba novo usuário
    E preencher o campo nome com "Jean" email e senha "123abc"
    Então validar o texto "Usuário inserido com sucesso"
  )
end

Quando('preencher com dados já existentes') do
  step 'preencher o campo nome com "Jean" email e senha "123abc"'
end
