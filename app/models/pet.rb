class Pet < ApplicationRecord
  # associations
  has_many :choices
  accepts_nested_attributes_for :choices

  SPECIES = ['dog', 'hamster', 'tiger', 'cat', 'rat']
  validates :address, presence: true
  validates :species, inclusion: { in: SPECIES }
  # .save => runs validations true/false

  def found_days_ago
    # number of days from today
    (Date.today - found_on).to_i
  end
end
