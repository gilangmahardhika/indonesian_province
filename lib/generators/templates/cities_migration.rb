class CreateCitiesTable < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, :null => false
      t.integer :province_id
    end
    add_index :cities, :name
  end
end
