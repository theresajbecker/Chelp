Given /the following charities do not exist/ do |charities_table|
  charities_table.hashes.each do |charity|
  	if ( Charity.exist(charity) )
  		Charity.destroy!(charity)
  	end
  end
end

Then /the following charities should exist/ do |charities_table|
  charities_table.hashes.each do |charity|
  	assert Charity.exist(charity)
  end
end
