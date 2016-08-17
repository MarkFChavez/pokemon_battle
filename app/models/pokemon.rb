class Pokemon < ActiveRecord::Base
  validates :name, :pokemon_identifier, presence: true
end
