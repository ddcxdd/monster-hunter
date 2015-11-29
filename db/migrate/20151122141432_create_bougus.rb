class CreateBougus < ActiveRecord::Migration
  def change
    create_table :bougus do |t|
      t.string :name
      t.string :position
      t.string :rare
      t.integer :defence
      t.string :skill
      t.string :wazatama
      t.string :series
      t.string :arm_type
      t.integer :max_level

      t.timestamps null: false

    end
  end
end
