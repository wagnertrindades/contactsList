class AddUserToContactList < ActiveRecord::Migration
  def change
    add_reference :contact_lists, :user, index: true, foreign_key: true
  end
end
