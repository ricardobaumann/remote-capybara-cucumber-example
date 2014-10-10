Given /^I am on "([^"]*)"$/ do |page|
  visit(page)
end

When /^I click on "([^"]*)"$/ do |text|
  find("a", :text => text).click
end
