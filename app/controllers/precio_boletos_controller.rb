class PrecioBoletosController < ApplicationController
  before_action :set_precio_boleto, only: [:show, :edit, :update, :destroy]

  # GET /precio_boletos
  # GET /precio_boletos.json
  def index
    @precio_boletos = PrecioBoleto.all
  end

  # GET /precio_boletos/1
  # GET /precio_boletos/1.json
  def show
  end

  # GET /precio_boletos/new
  def new
    @precio_boleto = PrecioBoleto.new
  end

  # GET /precio_boletos/1/edit
  def edit
  end

  # POST /precio_boletos
  # POST /precio_boletos.json
  def create
    @precio_boleto = PrecioBoleto.new(precio_boleto_params)

    respond_to do |format|
      if @precio_boleto.save
        format.html { redirect_to @precio_boleto, notice: 'Precio boleto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @precio_boleto }
      else
        format.html { render action: 'new' }
        format.json { render json: @precio_boleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /precio_boletos/1
  # PATCH/PUT /precio_boletos/1.json
  def update
    respond_to do |format|
      if @precio_boleto.update(precio_boleto_params)
        format.html { redirect_to @precio_boleto, notice: 'Precio boleto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @precio_boleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /precio_boletos/1
  # DELETE /precio_boletos/1.json
  def destroy
    @precio_boleto.destroy
    respond_to do |format|
      format.html { redirect_to precio_boletos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_precio_boleto
      @precio_boleto = PrecioBoleto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def precio_boleto_params
      params.require(:precio_boleto).permit(:precio, :clase, :destino, :origen)
    end
end
