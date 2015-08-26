class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :category
      t.string :cool_factor

      t.timestamps null: false
    end
  end
end
