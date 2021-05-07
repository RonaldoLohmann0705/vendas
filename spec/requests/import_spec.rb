require 'rails_helper'

RSpec.describe "Imports", :type => :request do
  include Rack::Test::Methods
  include ActionDispatch::TestProcess
  describe "POST /imports" do
    it "Has to upload file and generate sales" do
      # :params => { :widget => {:name => "My Widget"} }      
      res = post '/imports', { :import_file => Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/requests/dados.txt')), 'application/pdf', true) }
      expect(res.status).to eq(302)

      vendas = Venda.all
      expect(vendas.count).to eq(4)
    end
  end

end