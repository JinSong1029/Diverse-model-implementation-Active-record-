class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name 
      t.integer :master_id
      t.timestamps null: false
    end
    add_index :people, :master_id
  end
end
