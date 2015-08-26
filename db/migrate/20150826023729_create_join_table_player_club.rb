class CreateJoinTablePlayerClub < ActiveRecord::Migration
  def change
    create_join_table :players, :clubs do |t|
        t.index :player_id
        t.index :club_id
      end
  end
end
