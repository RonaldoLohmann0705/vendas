require 'rails_helper'

RSpec.describe Import, type: :model do
  it 'has to import right number of sales' do
    file = File.open("dados.txt")
    import = Import.new().import(file)
    expect(import.vendas.count).to eq(4)
    expect(import.total_imports).to eq(4)
    expect(import.total_price).to eq(30.00)
  end
end

