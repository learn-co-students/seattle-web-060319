class Pokemon < ActiveRecord::Base
  belongs_to :trainer
  # has_and_belongs_to_many :moves, :through => :pokemons_moves
  has_many :pokemons_moves
  has_many :moves, :through => :pokemons_moves
end
