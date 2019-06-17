class PokemonsMove < ActiveRecord::Base
  belongs_to :pokemon
  belongs_to :move
end
