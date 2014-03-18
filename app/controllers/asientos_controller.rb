class AsientosController < ApplicationController
  before_action :set_asiento, only: [:show, :edit, :update, :destroy]

  # GET /asientos
  # GET /asientos.json
  def index
    @asientos = Asiento.all
  end

  # GET /asientos/1
  # GET /asientos/1.json
  def show
  end

  # GET /asientos/new
  def new
    @asiento = Asiento.new
  end

  # GET /asientos/1/edit
  def edit
  end

  # POST /asientos
  # POST /asientos.json
  def create
    @asiento = Asiento.new(asiento_params)

    respond_to do |format|
      if @asiento.save
        format.html { redirect_to @asiento, notice: 'Asiento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @asiento }
      else
        format.html { render action: 'new' }
        format.json { render json: @asiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asientos/1
  # PATCH/PUT /asientos/1.json
  def update
    respond_to do |format|
      if @asiento.update(asiento_params)
        format.html { redirect_to @asiento, notice: 'Asiento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @asiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asientos/1
  # DELETE /asientos/1.json
  def destroy
    @asiento.destroy
    respond_to do |format|
      format.html { redirect_to asientos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asiento
      @asiento = Asiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asiento_params
      params.require(:asiento).permit(:asiento_no, :tipo, :is_active, :autobus_id)
    end
end
