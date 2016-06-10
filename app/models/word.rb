class Word < ActiveRecord::Base

  belongs_to :child
  validates :date, presence: true
  validates :word_name, presence: true
  validate :date_cannot_be_in_the_future

  def date_cannot_be_in_the_future
    if date > Date.today
      errors.add(:date, "cannot be in the future")
    end

  end

end
