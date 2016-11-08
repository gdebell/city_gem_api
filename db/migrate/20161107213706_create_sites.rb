class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :state
      t.text :photo
      t.integer :lat
      t.integer :long
      t.timestamps
    end
  end
end
