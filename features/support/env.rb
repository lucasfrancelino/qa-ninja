require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'faker'
require 'httparty'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

$env = ENV['BROWSER']
$headless = ENV['HEADLESS']

if $headless
    Capybara.register_driver :selenium do |app|
        Capybara::Poltergeist::Driver.new(app, js_errors: false)
    end
end

Capybara.configure do |config|
    if $env == 'chrome'
        config.default_driver = :selenium_chrome
        elsif $env == 'chrome_headless'
            config.default_driver = :selenium_chrome_headless
        else
            config.default_driver = :selenium
    end
    #link para testar a feature 'busca.feature'
    #config.app_host = 'https://portal.qaninja.io'

    #link para testar a feature 'restaurantes.feature'
    config.app_host = 'http://enjoeat-sp1.herokuapp.com'
end