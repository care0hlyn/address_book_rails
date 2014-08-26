class UpdateContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :phone
  end
end
