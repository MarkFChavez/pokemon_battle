class Battle < ActiveRecord::Base
  belongs_to :player_one, class_name: "Pokemon"
  belongs_to :player_two, class_name: "Pokemon"
  belongs_to :victor, class_name: "Pokemon"

  validates :player_one, :player_two, :victor, presence: true
end
