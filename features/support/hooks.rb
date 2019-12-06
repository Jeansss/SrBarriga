# antes de executar os cenários a tela é maximizada, as variaveis são instanciadas e são atribuidos valores fakes para email e nome.
Before do
  page.driver.browser.manage.window.maximize
  @acessar_cadastro = Login.new
  @cadastro_usuario = NovoUsuario.new
  @cadastro_conta = CadastroConta.new
  @conta_existente = ContaExistente.new
  @email = Faker::Internet.free_email
  @name =  Faker::Name.name
end

# depois de cada cenário é gerado um arquivo de acordo com o nome do cenário e é tirado um screenshot da tela renomeado com o nome do cenário, caso o cenário possuo "login" no nome, é realizado o logout
After do |scenario|
  nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
  nome_cenario = nome_cenario.tr(' ', '_').downcase!
  screenshot = "log/screenshots/#{nome_cenario}.png"
  page.save_screenshot(screenshot) # => capybara tira o screenshot
  embed(screenshot, 'image/png', 'Evidência') # => cucumber anexa evidência no relatório
  if scenario.name.include? 'Login'
    @acessar_cadastro.a_sair.click
    expect(@acessar_cadastro).to have_btn_entrar
  end
  Capybara.current_session.driver.quit #encerra a sessão após cada teste
end
