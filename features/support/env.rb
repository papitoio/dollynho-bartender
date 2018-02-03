require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'

# Capybara.register_driver :selenium do |app|
#   Capybara::Poltergeist::Driver.new(app, js_errors: false)
# end

Capybara.configure do |c|
  c.default_driver = :selenium_chrome_headless
  c.app_host = 'https://dollynho-bartender.herokuapp.com'
end

Capybara.default_max_wait_time = 10
