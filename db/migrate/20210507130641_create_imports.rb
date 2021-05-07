class CreateImports < ActiveRecord::Migration[5.2]
  def change
    create_table :imports do |t|
      t.integer :total_imports
      t.float :total_price

      t.timestamps
    end
  end
end
