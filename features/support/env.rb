require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'faker'
require 'httparty'
require 'pry'
require 'resolv-replace'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'yaml'

ENVIRONMENT = YAML.load_file('./config/environment.yml')
USER_DATA = YAML.load_file('./config/user_data.yml')

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end
