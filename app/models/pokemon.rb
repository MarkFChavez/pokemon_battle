class Pokemon < ActiveRecord::Base
  validates :name, :pokemon_identifier, presence: true

  # TODO: store some attributes if needed
  def sync
    url = "http://pokeapi.co/api/v2/pokemon/#{name}"
    response = HTTParty.get(url)

    raise if response.code != 200

    JSON.parse(response.body)
  end
end
