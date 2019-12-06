require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'pry'
require 'faker'

@browser = ENV['BROWSER']
ENVIRONMENT_TYPE ||= ENV['ENVIRONMENT_TYPE']

# configurações de inicialização de browser e se deseja iniciar em headless ele assume o valor headless
Capybara.configure do |config|
  if @browser.eql? 'headless'
    config.default_driver = :selenium_chrome_headless
  elsif @browser.eql? 'chrome'
    config.default_driver = :selenium_chrome
  else
    config.default_driver = :selenium
  end

  config.app_host = 'https://srbarriga.herokuapp.com/'
end

Capybara.default_max_wait_time = 10
