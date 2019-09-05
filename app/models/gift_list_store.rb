class GiftListStore < ApplicationRecord
    belongs_to :user
    belongs_to :gift_list
end
