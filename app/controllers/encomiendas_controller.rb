class EncomiendasController < ApplicationController
	before_action :set_encomienda, only: [:show, :edit, :update, :destroy]

	# GET /encomiendas
	# GET /encomiendas.json
	def index
		@encomiendas = Encomienda.all
	end

	# GET /encomiendas/1
	# GET /encomiendas/1.json
	def show
	end

	# GET /encomiendas/new
	def new
		@encomienda = Encomienda.new
		@precios = PrecioPaquete.all
	end

	# GET /encomiendas/1/edit
	def edit
		@precios = PrecioPaquete.all
	end

	# POST /encomiendas
	# POST /encomiendas.json
	def create
		@encomienda = Encomienda.new(encomienda_params)

		respond_to do |format|
			if @encomienda.save
				format.html { redirect_to @encomienda, notice: 'Encomienda was successfully created.' }
				format.json { render action: 'show', status: :created, location: @encomienda }
			else
				format.html { render action: 'new' }
				format.json { render json: @encomienda.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /encomiendas/1
	# PATCH/PUT /encomiendas/1.json
	def update
		respond_to do |format|
			if @encomienda.update(encomienda_params)
				format.html { redirect_to @encomienda, notice: 'Encomienda was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @encomienda.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /encomiendas/1
	# DELETE /encomiendas/1.json
	def destroy
		@encomienda.destroy
		respond_to do |format|
			format.html { redirect_to encomiendas_url }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_encomienda
			@encomienda = Encomienda.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def encomienda_params
			params.require(:encomienda).permit(:destinatario, :remitente, :peso, :destino, :origen, :is_delivered, :is_shipped, :is_onhold, :fecha, :terminal_id, :precio_paquete_id)
		end
end
