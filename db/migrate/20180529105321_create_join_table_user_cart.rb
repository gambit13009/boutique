class CreateJoinTableUserCart < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :carts do |t|
      t.index [:user_id, :cart_id]
      t.index [:cart_id, :user_id]
    end
  end
end
