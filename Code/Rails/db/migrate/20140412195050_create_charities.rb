class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
	  t.string :name
	  t.string :description
	  t.string :filter_flags
      t.timestamps
    end
  end
end
