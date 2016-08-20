class Pokemon < ActiveRecord::Base
  validates :name, :pokemon_identifier, presence: true

  def sync_types
    return types if self.types.any?

    url = "http://pokeapi.co/api/v2/pokemon/#{name}"
    response = HTTParty.get(url)

    raise if response.code != 200

    parsed_response = JSON.parse(response.body)

    # get pokemon types
    types = parsed_response["types"]
    types = types.map do |t|
      t["type"]["name"]
    end
    self.update(types: types)

    types
  end
  
  def sprite_url
    "pokemons/#{pokemon_identifier}.png"
  end
end
