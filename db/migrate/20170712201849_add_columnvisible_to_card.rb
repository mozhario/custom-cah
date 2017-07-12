class AddColumnvisibleToCard < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :visible, :boolean, :default => true
  end
end
