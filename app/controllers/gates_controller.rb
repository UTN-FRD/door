class GatesController < ApplicationController
  def new 
  	@gate = Gate.new
  	#@key = @gate.keys.create
  end

  def create
    @gate = Gate.find(params[:gate_id])
    @key = @gate.keys.create(key_params)
    redirect_to gate_path(@gate)
  end
 
  private
    def key_params
      params.require(:key).permit(:codigo, :numero_de_copia)
    end
end
