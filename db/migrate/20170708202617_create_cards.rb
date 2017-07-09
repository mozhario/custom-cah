class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.text :text
      t.string :card_type

      t.timestamps
    end
  end
end
