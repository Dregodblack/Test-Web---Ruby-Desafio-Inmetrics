# Bibliotecas
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'cpf_cnpj'
require 'faker'
require 'selenium-webdriver'
require 'rspec'
require 'rspec/expectations'
require 'pry'

  #$wait = Selenium::WebDriver::Wait.new :timeout => 10
  wait = Selenium::WebDriver::Wait.new(:timeout => 15)


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome, timeout: 30)
end

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Capybara::RSpecMatchers
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'https://inm-test-app.herokuapp.com/accounts/login/'
  config.default_max_wait_time = 360
end