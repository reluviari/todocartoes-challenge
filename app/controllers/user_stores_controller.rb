class UserStoresController < ApplicationController

	def show
    	@product_store = User.first.products
	end
	
	def create
        @store = UserStore.new(user_id: User.first.id, product_id: params[:product_id])
        
        respond_to do |format|
        	if @store.save
            	format.html { redirect_to products_path, flash: { success: 'Produto guardado com sucesso.' }}
          	else
            	format.html { redirect_to products_path, flash: { error: @store.errors.full_messages.first }}
          	end
        end
    end

	def destroy
    	@store = UserStore.find_by_product_id(params[:id])
		@store.destroy
		
		respond_to do |format|
			format.html { redirect_to user_store_path, flash: { success: 'Produto removido com sucesso.' }}
		end
	end

    private
    def user_store_params
    	params.fetch(:product_id, :id)
	end

end
