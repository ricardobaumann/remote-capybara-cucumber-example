Before do
	Capybara.register_driver :selenium_chrome do |app|   
    	Capybara::Selenium::Driver.new(app, :browser => :chrome)
	end
	Capybara.current_driver = :selenium_chrome
end

Given /^I am on google\.com$/ do
  visit('/')
end

When /^I enter "([^"]*)"$/ do |term|
  fill_in('q',:with => term)
end

Then /^I should see results$/ do
  #page.should have_css('div#res li')
end

After do
	#Capybara.use_default_driver
	page.execute_script "window.close();"
	# restart Selenium driver
	Capybara.send(:session_pool).delete_if { |key, value| key =~ /selenium/i }
end



