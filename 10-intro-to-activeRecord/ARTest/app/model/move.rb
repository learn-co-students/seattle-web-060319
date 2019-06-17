class Move <ActiveRecord::Base
  # has_many :pokemons_moves
  # has_and_belongs_to_many :pokemons, :through => :pokemons_moves
  has_many :pokemons_moves
  has_many :pokemons, :through => :pokemons_moves
end
