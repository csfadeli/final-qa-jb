Given('I go to {string}') do |url|
  visit url
end
  
When('I insert my email') do
  fill_in 'email', with:'latihan.qa@gmail.com'
end
  
And('I insert my password') do
  fill_in 'password', with:'Halo123!'
end
  
And('I click submit button') do 
  find("button[type='Submit']").click
end
  
Then('I can access Jubelio homepage') do 
  expect(find(:xpath, '//*[@id="wrapper"]/nav/div/div/ul/li[1]/a/span'))
  sleep 10
end
