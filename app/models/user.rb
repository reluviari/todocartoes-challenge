class User < ApplicationRecord
	has_many :user_stores
  	has_many :products, through: :user_stores
end
