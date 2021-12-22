class Auditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |t|
      t.string :actor 
      t.string :location
      t.integer :phone
      t.boolean :hired
      t.references :role
    end
  end
end
