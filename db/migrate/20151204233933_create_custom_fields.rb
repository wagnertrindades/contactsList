class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.string :title,     unique: true
      t.string :status
      t.text :items

      t.timestamps null: false
    end
  end
end
