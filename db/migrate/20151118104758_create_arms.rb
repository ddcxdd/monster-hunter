class CreateArms < ActiveRecord::Migration
  def change
    create_table :arms do |t|
      t.string :name
      t.string :skill
      t.string :zokusei
      t.integer :rare
      t.integer :max_level
      t.string :series
      t.integer :attack
      t.integer :max_attack
      t.string :item
      t.integer :item_number
      t.float :hyouka
      t.string :comment
      t.string :arm_type
      t.string :rare
      t.string :senritu

      t.timestamps null: false
    end
  end
end
