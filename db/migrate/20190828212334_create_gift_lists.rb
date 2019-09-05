class CreateGiftLists < ActiveRecord::Migration[5.2]
  def change
    create_table :gift_lists do |t|
      t.string :name
      t.date :date_event
      t.boolean :suggestion

      t.timestamps
    end
  end
end
