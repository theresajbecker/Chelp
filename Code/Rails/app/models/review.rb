class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :charity
  attr_accessible :title, :description, :user_id, :charity_id
end