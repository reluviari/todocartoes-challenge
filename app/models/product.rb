class Product < ApplicationRecord
    validates :name, presence: true, length: { maximum: 100 }
    validates :description, presence: true, length: { maximum: 1000 }
    VALID_PRICE_REGEX = /\A\d+(?:\.\d{0,3})?\z/
    validates :price, presence: true, :format => { with: VALID_PRICE_REGEX }, :numericality => {:greater_than => 0}
    validates_uniqueness_of :name

    belongs_to :category

    has_many :users, through: :user_stores

    def to_s
        self.name
    end

    def category_name
        self.category.name.to_s
    end
end
