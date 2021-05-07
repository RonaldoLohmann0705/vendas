class ImportsController < ApplicationController
  before_action :set_import, only: %i[ show edit update destroy ]

  # GET /imports or /imports.json
  def index
    @imports = Import.all
  end

  # GET /imports/1 or /imports/1.json
  def show
    @import = Import.find(params[:id])
    @vendas = @import.vendas
  end

  # GET /imports/new
  def new
    @import = Import.new
  end

  # POST /imports or /imports.json
  def create
    @import = Import.new().import(import_params[:import_file])
    @vendas = @import.vendas

    respond_to do |format|    
        format.html { redirect_to @import, notice: "Arquivo foi importado com sucesso!" }
        format.json { render :show, status: :created, location: @import, vendas: @vendas }      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import
      @import = Import.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def import_params
      params.permit(:import_file)
    end
end
