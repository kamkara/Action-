class AddFullContactToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :membership_category, :category
    add_column :users, :full_contact, :string
  end
end
