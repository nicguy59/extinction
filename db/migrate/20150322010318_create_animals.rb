class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.references :classification, index: true, foreign_key: true
      t.string :name
      t.string :range
      t.integer :extinction_date
      t.string :url
	  t.string :image_url

      t.timestamps null: false
    end
  end
end
