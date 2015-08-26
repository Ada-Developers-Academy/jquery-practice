class Player < ActiveRecord::Base
  has_and_belongs_to_many :clubs, :join_table => "clubs_players" 
end
