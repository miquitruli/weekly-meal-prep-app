class CreateShoppingLists < ActiveRecord::Migration[6.1]
  def change
    create_table :shopping_lists do |t|
      t.string :name
      t.integer :user_id
      t.integer :week_id

      t.timestamps
    end
  end
end
