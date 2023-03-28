class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :year, null: false
      t.integer :length, null: false
      t.string :image_url, null: false
      t.boolean :rating

      t.timestamps
    end
  end
end
