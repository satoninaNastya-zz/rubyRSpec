require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.run_server = false

