class Api::V1::ProductsController < ApplicationController

	def index
		
		begin
			products = Product.page(params[:page]).per(15)

			total = Product.all.count
			
			render json: products, 
				except: [:created_at, :updated_at], 
			  	include: {
					category: {
						except: [:created_at, :updated_at]
					}
				},
				meta: {
             		pagination: {
               			per_page: 15,
               			total_pages: total / 15,
               			total_objects: total
             		}
           		}, status: :ok
		rescue
			head :internal_server_error
		end
	end

end
