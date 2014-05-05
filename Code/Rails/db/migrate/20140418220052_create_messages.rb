class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
