class User < ActiveRecord::Base
  has_many :contact_list, :dependent => :delete_all
  has_many :custom_field, :dependent => :delete_all
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
