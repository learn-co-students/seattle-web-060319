class Trainer < ActiveRecord::Base
  has_many :pokemons
  has_and_belongs_to_many :badges
end
