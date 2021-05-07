class CreateVendas < ActiveRecord::Migration[5.2]
  def change
    create_table :vendas do |t|
      t.string :comprador
      t.string :descricao
      t.float :preco_unitario
      t.integer :quantidade
      t.string :endereco
      t.string :fornecedor
      t.references :import, foreign_key: true

      t.timestamps
    end
  end
end
