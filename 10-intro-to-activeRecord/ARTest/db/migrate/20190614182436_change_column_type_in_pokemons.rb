class ChangeColumnTypeInPokemons < ActiveRecord::Migration[5.2]
  def change
    rename_column :pokemons, :type, :kind
  end
end
