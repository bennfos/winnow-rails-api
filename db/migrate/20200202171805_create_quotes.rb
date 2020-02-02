class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.string :quote_author
      t.text :quote_text
      t.integer :page_id

      t.timestamps
    end
  end
end
