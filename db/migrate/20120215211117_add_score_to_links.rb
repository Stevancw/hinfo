class AddScoreToLinks < ActiveRecord::Migration
  def change
    add_column :links, :score, :integer, :default => 0
  end
end
