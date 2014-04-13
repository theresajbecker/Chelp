#---------below copied from old app

#require 'uri'
#require 'cgi'
#require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
#require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

#module WithinHelpers
#  def with_scope(locator)
#    locator ? within(*selector_for(locator)) { yield } : yield
#  end
#end
#World(WithinHelpers)

# Single-line step scoper
#When /^(.*) within (.*[^:])$/ do |step, parent|
#  with_scope(parent) { When step }
#end

# Multi-line step scoper
#When /^(.*) within (.*[^:]):$/ do |step, parent, table_or_string|
#  with_scope(parent) { When "#{step}:", table_or_string }
#end

#--------- Above copied from old program


#You can implement step definitions for undefined steps with these snippets:

#Feature: The Chelp Homepage
  #This is the Chelp homepage where the user should first be taken.
  
  
  #Given I am on the Chelp home page
Given /^(?:\I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

#navigate to
When /^(?:|I )go to (.+)$/ do |page_name| 
  visit path_to(page_name)
end 


When /^(?:|I )go to "([^"]*)"$/ do |button|
  click_button(button)
end


When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

#----------------------------------------- 4 passing
#You can implement step definitions for undefined steps with these snippets:

When(/^I follow "name"$/) do
  pending # express the regexp above with the code you wish you had
end

##Then(/^I should see “Charity Name” in alphabetical order$/) do
 # pending # express the regexp above with the code you wish you had
#end

Then /I should see charity names in alphabetical order/ do

   rows = page.all("table#charities tbody tr td[1]").map {|t| t.text}

   lastCharity = ""

   rows.each do |charity|
   
   	if lastCharity != ""
       	assert lastCharity < charity
   	else lastCharity = charity
   	end
   end
end






