class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :fire
      t.integer :water
      t.integer :thunder
      t.integer :ice
      t.integer :soil
      t.string :comment

      t.timestamps null: false
    end
  end
end
