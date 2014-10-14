Before do
	Capybara.register_driver :selenium_chrome do |app|   
    	Capybara::Selenium::Driver.new(app, :browser => :chrome)
	end
	Capybara.current_driver = :selenium_chrome
  Capybara.default_selector = :xpath
end

Given /^I am on "([^"]*)"$/ do |page|
  visit(page)
end

When /^click on "([^"]*)"$/ do |text|
  find("a", :text => text).click
end

Given /^fill form entry "([^"]*)" with "([^"]*)"$/ do |name, value|
  fill_in name, with: value
end

Given /^click on "(.*?)" Button$/ do |button|
  click_button button
end

Given /^click on input with src like "(.*?)"$/ do |src|
  find(:xpath, "//input[contains(@src,'#{src}')]").click
end

Given /^click on "(.*?)" Text$/ do |text|
  click_on text
end

Given /^click on "(.*?)" element with text "(.*?)"$/ do |element, text|
  element = find(:xpath, "//#{element}[contains(text(),'#{text}')]")
  element.click if element
end

Given /^Wait for "(.*?)" seconds$/ do |seconds|
  sleep seconds.to_i
end

Given /^choose option "(.*?)" with "(.*?)"$/ do |select, text|
  select text, from: select
end

Given /^check "(.*?)"$/ do |check_name|
  check check_name
end

Given /^click on id "(.*?)"$/ do |id|
  begin
    find(:xpath, "//*[contains(@id,'#{id}')]").click
  rescue
    #Kernel.puts "failed"
  end
end


Then /^I should see the text "(.*?)"$/ do |text|
  page.should have_content(text)
end



After do
	#Capybara.use_default_driver
	page.execute_script "window.close();"
	# restart Selenium driver
	Capybara.send(:session_pool).delete_if { |key, value| key =~ /selenium/}
end
