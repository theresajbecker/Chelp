class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.references :user, index: true
      t.string :message

      t.timestamps
    end
  end
end
