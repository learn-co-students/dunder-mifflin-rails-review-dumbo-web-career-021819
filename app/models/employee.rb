class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: true
  validates :title, uniqueness: true 

  def full_name
    value = [first_name, last_name].join(' ')
  end
end
