class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :month
      t.string :day
      t.text :thought
      t.integer :book_id

      t.timestamps
    end
  end
end
