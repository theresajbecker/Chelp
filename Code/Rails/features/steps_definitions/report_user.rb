Then /the following messages should exist/ do |messages_table|
  messages_table.hashes.each do |message|
  	assert Message.exist(message)
  end
end
