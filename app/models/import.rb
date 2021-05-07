class Import < ApplicationRecord
    has_many :vendas, dependent: :destroy
    def import(import_file)  
        @import = Import.create()
        total_imports = 0
        total_price = 0
        File.foreach( import_file.path ).with_index do |line, index| 
            next if index == 0           
            fields = line.split("\t")           
            venda = @import.vendas.new(comprador: fields[0], descricao: fields[1], preco_unitario: fields[2], quantidade: fields[3], endereco: fields[4], fornecedor: fields[5])
            if venda.save
                total_imports = total_imports + 1
                total_price = total_price + fields[2].to_i
            end            
        end
        @import.update(total_imports: total_imports, total_price: total_price)
        return @import
    end
end
