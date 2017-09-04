require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'site_prism'
require 'capybara-screenshot/cucumber'

#Configurando o driver Capybara
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setendo a configuração do driver como padrão
Capybara.default_driver = :selenium

#timeout padrão na execução
Capybara.default_max_wait_time = 15

#Maximizar a tela ao inicio do teste
Capybara.page.driver.browser.manage.window.maximize

#Capybara::Screenshot.screenshot_and_save_page
#Capybara::Screenshot.screenshot_and_open_image