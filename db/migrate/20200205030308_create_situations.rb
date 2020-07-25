# frozen_string_literal: true

class CreateSituations < ActiveRecord::Migration[5.2]
  def change
    create_table :situations do |t|
      t.integer :bat_counts
      t.integer :inings
      t.string :actness_results
      t.integer :where_go
      t.integer :ball_counts
      t.integer :ball_strike
      t.integer :rbi
      t.integer :steal_counts
      t.boolean :score
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
