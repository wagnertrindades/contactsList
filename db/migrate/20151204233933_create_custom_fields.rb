class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.string :title
      t.string :status
      t.text :items
      t.references :contact_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
