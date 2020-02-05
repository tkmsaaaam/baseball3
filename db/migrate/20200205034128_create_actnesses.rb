class CreateActnesses < ActiveRecord::Migration[5.2]
  def change
    create_table :actnesses do |t|
      t.integer :ball_type
      t.boolean :swing
      t.boolean :ball
      t.boolean :strike
      t.boolean :foul
      t.integer :ball_strike

      t.timestamps
    end
  end
end
