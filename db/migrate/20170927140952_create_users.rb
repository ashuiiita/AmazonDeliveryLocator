class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
	  t.string :name , null:false
	  t.string :userId , null:false , unique: true
	  t.string :password , null:false
	  
    t.timestamps
    end

    add_index :users, :userId, unique: true
  end
end
