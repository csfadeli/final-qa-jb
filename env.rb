require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'rspec'
require 'pry'
require 'webdrivers'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, timeout: 30)
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 30
end
