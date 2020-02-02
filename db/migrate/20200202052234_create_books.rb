class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.boolean :starts_blank
      t.int :user_id

      t.timestamps
    end
  end
end
