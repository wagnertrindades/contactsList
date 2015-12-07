class User < ActiveRecord::Base
  has_many :contact_lists, :dependent => :delete_all
  has_many :custom_fields, :dependent => :delete_all
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
