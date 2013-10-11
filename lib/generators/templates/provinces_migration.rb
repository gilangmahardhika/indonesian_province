class CreateProvincesTable < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name, :null => false
    end
    add_index :provinces, :name
  end
end
