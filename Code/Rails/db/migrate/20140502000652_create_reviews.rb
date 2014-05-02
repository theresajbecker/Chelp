class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true
      t.references :charity, index: true
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
