class KeysController < ApplicationController
	def index
        @key = Key.all
 	end

	def show
	    @key = Key.find(params[:id])
	end

	def new
		@key = Key.new
	end

	def edit
  		@key = Key.find(params[:id])
	end

	def create
		@key = Key.new(params.required(:key).permit(:codigo, :numero_de_copia))

		if @key.save	
	        redirect_to keys_path

	       else
	       	render 'new'
	       end
    end

    def update
  	    @key = Key.find(params[:id])
 
		if @key.update(key_params)
		    redirect_to keys_path
		else
		    render 'edit'
		end
	end

	def destroy
 		@key = Key.find(params[:id])
  		@key.destroy

   		redirect_to keys_path
	end

    private
    	def key_params
		  params.required(:key).permit(:codigo, :numero_de_copia)
		end
end