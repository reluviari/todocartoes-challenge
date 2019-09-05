class CreateGiftListStores < ActiveRecord::Migration[5.2]
  def change
    create_table :gift_list_stores do |t|
      t.integer :user_id
      t.integer :gift_list_id

      t.timestamps
    end
  end
end
