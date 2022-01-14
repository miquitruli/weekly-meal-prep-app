class CreateJoinTableWeekShoppinList < ActiveRecord::Migration[6.1]
  def change
    create_join_table :weeks, :shopping_lists do |t|
      # t.index [:week_id, :shopping_list_id]
      # t.index [:shopping_list_id, :week_id]
    end
  end
end
