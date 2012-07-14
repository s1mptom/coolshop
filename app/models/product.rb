class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price
  has_many :line_items
end
