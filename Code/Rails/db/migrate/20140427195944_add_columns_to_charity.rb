class AddColumnsToCharity < ActiveRecord::Migration
  def change
    add_column :charities, :geographic_region, :string
    add_column :charities, :area_of_impact, :string
    add_column :charities, :percent_of_overhead, :string
    add_column :charities, :religious_affiliation, :string
    add_column :charities, :how_to_donate, :string
    add_column :charities, :charity_image, :string
    add_column :charities, :charity_homepage, :string
  end
end
