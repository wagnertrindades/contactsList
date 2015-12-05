class CustomField < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :status, presence: true
end
