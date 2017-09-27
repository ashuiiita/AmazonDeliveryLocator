class ChangeDeliveryCentreTableName < ActiveRecord::Migration[5.1]
  def change
  	rename_table :delivery_centre, :delivery_centres
  end
end
