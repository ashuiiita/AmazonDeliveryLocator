class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name , null:false
	  t.string :description , null:false
	  t.integer :user_id , null:false
	  t.integer :delivery_centre_id , null:false
	  t.date :deliveryDate , null:false
	  
   	  t.timestamps
    end
    add_foreign_key :orders, :users
    add_foreign_key :orders, :delivery_centres
  end
end
