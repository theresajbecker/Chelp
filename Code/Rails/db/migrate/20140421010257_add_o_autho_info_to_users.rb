class AddOAuthoInfoToUsers < ActiveRecord::Migration
  def change
  	drop_table :users
  	create_table :users do |t|
      
      t.string :oauth_provider
      t.string :oauth_uid
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :picture
      t.string :email
      t.string :password
      t.string :permissions

      t.timestamps
    end
  end
end