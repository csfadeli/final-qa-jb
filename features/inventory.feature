Feature: Testing - Update product stock in inventory 

@inventory
Scenario: Update product stock in inventory
  Given I go to "https://app.jubelio.com/login" 
  When I insert my email 
  And I insert my password
  And I click submit button
  Then I can access Jubelio homepage
  And I click on Barang
  And I click Persediaan
  And I insert keyword 'iPad' in search field 
  And I click on the checkbox result of the searching
  And I click Penyesuaian Persediaan to update the stock
  When I fill quantity to "2"
  And I click simpan
  Then I successfully update stock quantity in inventory
