class RemoveSeedData < ActiveRecord::Migration[7.0]
  def change
    drop_table :seed_data
  end
end
