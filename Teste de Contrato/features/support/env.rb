require 'httparty'
require 'faker'
require 'rspec'
require 'json_matchers/rspec'
require 'pry'
#require_relative 'helper.rb'
require 'capybara'
require 'capybara/cucumber'
require 'report_builder'
require 'selenium-webdriver'

JsonMatchers.schema_root = "features/schemas/"


Capybara.configure do |config|
    config.default_driver = :selenium_chrome #roda no navegador
    config.default_driver = :selenium_chrome_headless #roda com o nageador em background
end