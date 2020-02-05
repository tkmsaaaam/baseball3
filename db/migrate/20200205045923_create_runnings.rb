class CreateRunnings < ActiveRecord::Migration[5.2]
  def change
    create_table :runnings do |t|
      t.integer :place
      t.integer :base_id
      t.integer :go_counts
      t.string :reason
      t.references :Situation, foreign_key: true

      t.timestamps
    end
  end
end
