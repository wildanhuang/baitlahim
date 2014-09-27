class AddUserIdToContactInformation < ActiveRecord::Migration
  def change
    add_column :contact_informations, :user_id, :integer
  end
end
