class AddApprovedToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :approved, :boolean, default: false
  end
end
