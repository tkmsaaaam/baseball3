class CreateRunnings < ActiveRecord::Migration[5.2]
  def change
    create_table :runnings do |t|
      t.integer :place
      t.integer :base_id
      t.integer :go_counts
      t.string :reason

      t.timestamps
    end
  end
end
