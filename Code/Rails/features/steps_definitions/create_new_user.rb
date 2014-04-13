Given /the following users do not exist/ do |users_table|
  users_table.hashes.each do |user|
  	if ( User.exist(user) )
  		User.destroy!(user)
  	end
  end
end

Then /the following users should exist/ do |users_table|
  users_table.hashes.each do |user|
  	assert User.exist(user)
  end
end