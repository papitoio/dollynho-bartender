require "selenium-webdriver"
require "capybara"
require "capybara/cucumber"

Capybara.configure do |c|
    c.default_driver = :selenium_chrome_headless
    c.app_host = 'https://dollynho-bartender.herokuapp.com'
end

Capybara.default_max_wait_time = 10

