class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.date :date

      t.timestamps
    end
  end
end
