class AddPiiToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :firstName, :string
    add_column :customers, :lastName, :string
    add_column :customers, :birthday, :date
    add_column :customers, :physAddress, :text
    add_column :customers, :phone, :string
    add_column :customers, :phone2, :string
  end
end
