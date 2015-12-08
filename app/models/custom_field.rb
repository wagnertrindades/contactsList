class CustomField < ActiveRecord::Base
  belongs_to :user
  has_one :field, :dependent => :delete

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

  def is_combobox?
    return true if self.status == "combobox"
  end

  def items_split
    return self.items.split(", ")
  end
end
