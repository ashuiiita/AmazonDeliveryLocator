class AddPriorityToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :priority, :integer
  end
end
