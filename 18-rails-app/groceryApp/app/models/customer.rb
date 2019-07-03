class Customer < ApplicationRecord
  has_and_belongs_to_many :groceries
  # has_many :customers_groceries
  # has_many :groceries, through => :customers_groceries
end
