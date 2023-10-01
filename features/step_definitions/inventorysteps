Given('I click on Barang') do
  find(:xpath, '//*[@id="wrapper"]/nav/div/div/ul/li[2]/a/span[1]').click
end
 
And('I click Persediaan') do
  expect(find(:xpath, '//*[@id="wrapper"]/nav/div/div/ul/li[2]/ul/li[2]/a/i'))
  find(:xpath, '//*[@id="wrapper"]/nav/div/div/ul/li[2]/ul/li[2]/a').click
end

And('I insert keyword {string} in search field') do |keyword|
  expect(find("[placeholder='Nama, SKU, Merek Lain']").set(keyword))
  find(:xpath, "//span[@class='glyphicon glyphicon-search']").click
end
  
And('I click on the checkbox result of the searching') do
  find(:xpath, "//label[@for='checkbox0']").click
end
  
And('I click Penyesuaian Persediaan to update the stock') do
  find_button('Penyesuaian Persediaan').click
  expect(page).to(have_content('Qty Akhir'), wait: 10, visible: true)
  element = find(:xpath, "//*[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[2]/div")
  element.double_click
end
  
When('I fill quantity to {string}') do |quantity|
  elementSet_quanitity = find(:xpath, "//input[@class=' editor-main']")
  elementSet_quanitity.set(quantity)
  find(:xpath, "//*[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[5]/div/div/span/div").click
  sleep 5
end
  
And('I click simpan') do
  find_button('Simpan').click
end
  
Then('I successfully update stock quantity in inventory') do
  expect(page).to(have_content('Data berhasil disimpan.'), wait: 10)
end
