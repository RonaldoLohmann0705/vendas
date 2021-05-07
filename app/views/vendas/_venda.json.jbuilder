json.extract! venda, :id, :comprador, :descricao, :preco_unitario, :quantidade, :endereco, :fornecedor, :import_id, :created_at, :updated_at
json.url venda_url(venda, format: :json)
