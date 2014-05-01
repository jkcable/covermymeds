require 'rspec'
require 'watir-webdriver'

USERNAME = "jkcable"
PASSWORD = "123Password"

describe 'Covermymeds' do

browser = Watir::Browser.new 'firefox'
browser.goto 'https://navinet.covermymeds.com/main/'
browser.text_field(:id, 'cmm_login_username').set(USERNAME)
browser.text_field(:id, 'cmm_login_password').set(PASSWORD)
browser.a(:class, 'button primary small').click
fail unless browser.text.include? "Jennifer Cable"
browser.quit
end
