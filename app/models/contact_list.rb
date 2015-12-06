class ContactList < ActiveRecord::Base
  belongs_to :user
  has_many :fields
  has_many :custom_fields, through: :fields

  validates :email, presence: true
end