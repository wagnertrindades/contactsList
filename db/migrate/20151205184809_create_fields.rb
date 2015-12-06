class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :content,          default: " ", null: false
      t.text :area_content,       default: " ", null: false
      t.text :combobox,           default: " ", null: false
      t.references :contact_list, index: true, foreign_key: true
      t.references :custom_field, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
