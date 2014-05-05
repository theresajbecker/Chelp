class ChangePercentOverheadTypeToCharities < ActiveRecord::Migration
  def change
  	remove_column :charities, :percent_of_overhead
  	add_column :charities, :percent_of_overhead, :int
  end
end
