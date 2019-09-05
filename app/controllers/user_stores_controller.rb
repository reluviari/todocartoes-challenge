class UserStoresController < ApplicationController
	# before_action :set_store, only: [:show]
	
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

	def show
      @product_store = User.first.products
      # if @product_store.empty? 
      #   flash[:info] = 'Você ainda não guardou nenhum produto.'
      # end
	end
	
  def destroy
    @store = UserStore.find_by_product_id(params[:id])
		@store.destroy
		respond_to do |format|
		  format.html { redirect_to user_store_path, flash: { success: 'Produto removido com sucesso.' }}
		end
	end

    private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_store_params
      params.fetch(:product_id, :id)
	  end
	
	# Use callbacks to share common setup or constraints between actions.
  def set_user_store
		
	end

end
