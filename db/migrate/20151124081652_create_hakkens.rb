class CreateHakkens < ActiveRecord::Migration
  def change
    create_table :hakkens do |t|
      t.string :quest_number
      t.string :quest_name
      t.string :day_night
      t.string :name
      t.string :possibility
      t.string :kiseki_name
      t.integer :kiseki_number
      t.string :island

      t.timestamps null: false
    end
  end
end
