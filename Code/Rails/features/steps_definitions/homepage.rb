Given /the following charities exist/ do |charities_table|
  charities_table.hashes.each do |charity|
    Charity.create!(charity)
  end
  assert charities_table.hashes.size == Charity.all.count
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






