class DropControllersTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :controllers

  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
