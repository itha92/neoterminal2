class BoletosController < ApplicationController
  before_action :set_boleto, only: [:show, :edit, :update, :destroy]

  # GET /boletos
  # GET /boletos.json
  def index
    @boletos = Boleto.all
  end

  # GET /boletos/1
  # GET /boletos/1.json
  def show
  end

  # GET /boletos/new
  def new
    @boleto = Boleto.new
    @terminales = Terminal.all
    @boletos = PrecioBoleto.all
  end

  # GET /boletos/1/edit
  def edit
    @terminales = Terminal.all
    @boletos = PrecioBoleto.all
  end

  # POST /boletos
  # POST /boletos.json
  def create
    @boleto = Boleto.new(boleto_params)

    respond_to do |format|
      if @boleto.save
        format.html { redirect_to @boleto, notice: 'Boleto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @boleto }
      else
        format.html { render action: 'new' }
        format.json { render json: @boleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boletos/1
  # PATCH/PUT /boletos/1.json
  def update
    respond_to do |format|
      if @boleto.update(boleto_params)
        format.html { redirect_to @boleto, notice: 'Boleto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @boleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boletos/1
  # DELETE /boletos/1.json
  def destroy
    @boleto.destroy
    respond_to do |format|
      format.html { redirect_to boletos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boleto
      @boleto = Boleto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boleto_params
      params.require(:boleto).permit(:fecha, :descuento, :subtotal, :total, :precio_boletos_id, :terminal_id)
    end
end
