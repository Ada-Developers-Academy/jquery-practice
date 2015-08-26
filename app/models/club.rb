class Club < ActiveRecord::Base
  has_and_belongs_to_many :players, :join_table => "clubs_players"
end
