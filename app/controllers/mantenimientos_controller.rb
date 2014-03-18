class MantenimientosController < ApplicationController
  before_action :set_mantenimiento, only: [:show, :edit, :update, :destroy]

  # GET /mantenimientos
  # GET /mantenimientos.json
  def index
    @mantenimientos = Mantenimiento.all
  end

  # GET /mantenimientos/1
  # GET /mantenimientos/1.json
  def show
  end

  # GET /mantenimientos/new
  def new
    @mantenimiento = Mantenimiento.new
  end

  # GET /mantenimientos/1/edit
  def edit
  end

  # POST /mantenimientos
  # POST /mantenimientos.json
  def create
    @mantenimiento = Mantenimiento.new(mantenimiento_params)

    respond_to do |format|
      if @mantenimiento.save
        format.html { redirect_to @mantenimiento, notice: 'Mantenimiento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mantenimiento }
      else
        format.html { render action: 'new' }
        format.json { render json: @mantenimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mantenimientos/1
  # PATCH/PUT /mantenimientos/1.json
  def update
    respond_to do |format|
      if @mantenimiento.update(mantenimiento_params)
        format.html { redirect_to @mantenimiento, notice: 'Mantenimiento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mantenimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mantenimientos/1
  # DELETE /mantenimientos/1.json
  def destroy
    @mantenimiento.destroy
    respond_to do |format|
      format.html { redirect_to mantenimientos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mantenimiento
      @mantenimiento = Mantenimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mantenimiento_params
      params.require(:mantenimiento).permit(:fecha, :observacion, :kilometraje, :precio, :autobus_id)
    end
end
