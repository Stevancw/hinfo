class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :link_id
      t.boolean :vote

      t.timestamps
    end
    add_index :ratings, :user_id
    add_index :ratings, :link_id
  end
end
