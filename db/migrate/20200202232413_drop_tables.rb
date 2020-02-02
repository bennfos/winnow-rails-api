class DropTables < ActiveRecord::Migration[6.0]
  def up
    drop_table :books
    drop_table :pages
    drop_table :quotes


  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
