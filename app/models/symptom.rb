class Symptom < ActiveRecord::Base

  belongs_to :child
  validates :date, presence: true
  validate :none_with_fever
  validate :date_cannot_be_in_the_future

  def date_cannot_be_in_the_future
    if date > Date.today
      errors.add(:date, "cannot be in the future")
    end

  end

  def none_with_fever
    if :none == true && :fever == true
      errors.add(:none, "Cannot select none and fever together")
    end

  end

end
