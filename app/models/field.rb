class Field < ActiveRecord::Base
  belongs_to :contact_list
  belongs_to :custom_field
end
