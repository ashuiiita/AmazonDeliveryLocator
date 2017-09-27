class DeliveryCentre < ActiveRecord::Migration[5.1]
  def change
  	create_table :delivery_centre do |t|
  		t.string :name , null:false
  		t.string :description
  		t.string :address, null:false
  		t.decimal :latitude, null:false
  		t.decimal :longitude, null:false

  		t.timestamps
  	end
  end
end
