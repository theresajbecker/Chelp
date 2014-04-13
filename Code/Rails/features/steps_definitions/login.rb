Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    User.create!(user)
  end
  assert users_table.hashes.size == User.all.count
end