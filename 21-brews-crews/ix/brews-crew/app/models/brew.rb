class Brew < ApplicationRecord
    has_many :purchases 
    validates :blend_name, {presence: true, uniqueness: true}
end
