class ContactList < ActiveRecord::Base
  belongs_to :user
  has_many :fields, :dependent => :delete_all
  has_many :custom_fields, through: :fields, :dependent => :delete_all

  validates :email, presence: true
end