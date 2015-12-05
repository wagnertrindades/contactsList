class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.string :title
      t.string :status
      t.text :items

      t.timestamps null: false
    end
  end
end
