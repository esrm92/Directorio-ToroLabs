class RegistersController < ApplicationController
	
	def index
		@registers = Register.all
	end

	#GET /articles/:id
	def show
		#ENCONTRAR REGISTRO POR ID
		@register = Register.find(params[:id])	
		#Article.where ("id = ?", params[:id])
		#Article.where.not ("id = ?", params[:id])
	end

	def new
		@register = Register.new		 
	end

	def create
		#@article = Article.new(title: params[:article][:title], body: params[:article][:body] )
		@register = Register.new(register_params)

		if @register.save
			redirect_to @register
		else
			render :new
		end

	end

	def update
		@register = Register.find(params[:id])
		@register.update(register_params) 
		#@article.update_attributes({title: 'nuevo titulo'})
	end

	def destroy 
		@register = Register.find(params[:id])
		@article.destroy  #Elimina el objeto de la base de datos
		redirect_to registers_path
	end



	
	private 

	def register_params		
		params.require(:register).permit(:nombre,:telefono,:celular,:email)	
	end


end