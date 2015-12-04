class CreateContactLists < ActiveRecord::Migration
  def change
    create_table :contact_lists do |t|
      t.string :name
      t.string :email
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
