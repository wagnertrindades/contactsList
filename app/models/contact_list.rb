class ContactList < ActiveRecord::Base
  belongs_to :user
  has_many :fields, :dependent => :delete_all
  has_many :custom_fields, through: :fields, :dependent => :delete_all

  accepts_nested_attributes_for :fields

  validates :email, presence: true
end