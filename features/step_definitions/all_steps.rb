
Given(/^I am on the Google home page$/) do
 visit("http://www.google.com")
end

Given(/^I am on the BBC home page$/) do
  visit("http://www.bbc.co.uk")
end


When /^I fill in "([^"]*)" with "([^"]*)"$/ do |element, text|
 fill_in element, with: text
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text

end

Given(/^I am on Apple home Page$/) do
 visit("http://www.apple.co.uk")
end

Given(/^I am on the Yahoo home page$/) do
 visit("http://uk.yahoo.com")
end

Given(/^I am on the Facebook home page$/) do
 visit "https://www.facebook.com"
end

Then(/^response code should be "([^"]*)"$/) do |code|
  data = page.status_code
  data.should eq(code.to_i)
end
