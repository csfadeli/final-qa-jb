require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(timeout:10)

begin

driver.get('https://app.jubelio.com/login')

input_email = wait.until {driver.find_element(css: 'input[name="email"]')}
input_password = wait.until {driver.find_element(css: 'input[name="password"]')}
submit_button = wait.until {driver.find_element(css: 'button[type="submit"]')}

input_email.send_keys('qa.rakamin.jubelio@gmail.com')
input_password.send_keys('Jubelio123!')

submit_button.click

ensure

driver.quit

end
