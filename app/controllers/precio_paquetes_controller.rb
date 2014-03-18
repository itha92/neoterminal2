class PrecioPaquetesController < ApplicationController
  before_action :set_precio_paquete, only: [:show, :edit, :update, :destroy]

  # GET /precio_paquetes
  # GET /precio_paquetes.json
  def index
    @precio_paquetes = PrecioPaquete.all
  end

  # GET /precio_paquetes/1
  # GET /precio_paquetes/1.json
  def show
  end

  # GET /precio_paquetes/new
  def new
    @precio_paquete = PrecioPaquete.new
  end

  # GET /precio_paquetes/1/edit
  def edit
  end

  # POST /precio_paquetes
  # POST /precio_paquetes.json
  def create
    @precio_paquete = PrecioPaquete.new(precio_paquete_params)

    respond_to do |format|
      if @precio_paquete.save
        format.html { redirect_to @precio_paquete, notice: 'Precio paquete was successfully created.' }
        format.json { render action: 'show', status: :created, location: @precio_paquete }
      else
        format.html { render action: 'new' }
        format.json { render json: @precio_paquete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /precio_paquetes/1
  # PATCH/PUT /precio_paquetes/1.json
  def update
    respond_to do |format|
      if @precio_paquete.update(precio_paquete_params)
        format.html { redirect_to @precio_paquete, notice: 'Precio paquete was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @precio_paquete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /precio_paquetes/1
  # DELETE /precio_paquetes/1.json
  def destroy
    @precio_paquete.destroy
    respond_to do |format|
      format.html { redirect_to precio_paquetes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_precio_paquete
      @precio_paquete = PrecioPaquete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def precio_paquete_params
      params.require(:precio_paquete).permit(:tipo_paquete, :precio)
    end
end
