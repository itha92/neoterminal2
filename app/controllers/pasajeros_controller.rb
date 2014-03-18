class PasajerosController < ApplicationController
  before_action :set_pasajero, only: [:show, :edit, :update, :destroy]

  # GET /pasajeros
  # GET /pasajeros.json
  def index
    @pasajeros = Pasajero.all
  end

  # GET /pasajeros/1
  # GET /pasajeros/1.json
  def show
  end

  # GET /pasajeros/new
  def new
    @pasajero = Pasajero.new
  end

  # GET /pasajeros/1/edit
  def edit
  end

  # POST /pasajeros
  # POST /pasajeros.json
  def create
    @pasajero = Pasajero.new(pasajero_params)

    respond_to do |format|
      if @pasajero.save
        format.html { redirect_to @pasajero, notice: 'Pasajero was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pasajero }
      else
        format.html { render action: 'new' }
        format.json { render json: @pasajero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pasajeros/1
  # PATCH/PUT /pasajeros/1.json
  def update
    respond_to do |format|
      if @pasajero.update(pasajero_params)
        format.html { redirect_to @pasajero, notice: 'Pasajero was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pasajero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pasajeros/1
  # DELETE /pasajeros/1.json
  def destroy
    @pasajero.destroy
    respond_to do |format|
      format.html { redirect_to pasajeros_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pasajero
      @pasajero = Pasajero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pasajero_params
      params.require(:pasajero).permit(:nombre, :identidad, :fecha_nacimiento, :asiento_id, :boleto_id)
    end
end
