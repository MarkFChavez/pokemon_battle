class Pokemon < ActiveRecord::Base
  validates :name, :pokemon_identifier, presence: true

  def sprite_url
    "pokemons/#{pokemon_identifier}.png"
  end
end
