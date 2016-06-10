class Symptom < ActiveRecord::Base

  belongs_to :child
  validates :date, presence: true, uniqueness: true
  validate :date_cannot_be_in_the_future
  validate :none_with_fever
  validate :none_with_cough
  validate :none_with_diahrrea
  validate :none_with_other

  def date_cannot_be_in_the_future
    if date > Date.today
      errors.add(:date, "cannot be in the future")
    end

  end

  def none_with_fever
    if none == true && fever == true
      errors.add(:none, "cannot be combined with fever")
    end
  end

  def none_with_cough
    if none == true && cough == true
      errors.add(:none, "cannot be combined with cough")
    end
  end

  def none_with_diahrrea
    if none == true && diahrrea == true
      errors.add(:none, "cannot be combined with diahrrea")
    end
  end

  def none_with_other
    if none == true && other != nil
      errors.add(:none, "cannot be combined with other")
    end
  end

end
