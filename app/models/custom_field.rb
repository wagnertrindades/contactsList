class CustomField < ActiveRecord::Base
  belongs_to :user
  has_one :field
  has_one :contact_list, through: :field

  validates :title, presence: true
  validates :status, presence: true

  validates_inclusion_of :status, :in => %w(text text_area combobox),
    :message => "%{value} não é um tipo valido"

  def is_text?
    return true if self.status == "text"
  end

  def is_text_area?
    return true if self.status == "text_area"
  end

  def is_checkbox?
    return true if self.status == "combobox"
  end
end
