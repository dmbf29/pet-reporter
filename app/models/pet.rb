class Pet < ApplicationRecord
  # associations
  SPECIES = ['dog', 'hamster', 'tiger', 'cat', 'rat']
  validates :address, presence: true
  validates :species, inclusion: { in: SPECIES }
  # .save => runs validations true/false

  def found_days_ago
    # number of days from today
    (Date.today - found_on).to_i
  end
end
