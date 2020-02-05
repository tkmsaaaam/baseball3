class CreateSituations < ActiveRecord::Migration[5.2]
  def change
    create_table :situations do |t|
      t.integer :bat_counts
      t.integer :inings
      t.references :Game, foreign_key: true

      t.timestamps
    end
  end
end
