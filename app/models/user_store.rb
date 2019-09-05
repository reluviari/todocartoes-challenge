class UserStore < ApplicationRecord
    belongs_to :user
    belongs_to :product
    
    validates :product_id, uniqueness: { message: "Erro: Produto já guardado." }
end
