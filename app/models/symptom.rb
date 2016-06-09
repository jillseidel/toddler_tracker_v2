class Symptom < ActiveRecord::Base

  belongs_to :child
  validates :date, presence: true
  validate :none_with_fever
  
  def none_with_fever
    if :none == true && :fever == true
      errors.add(:none, "Cannot select none and fever together")
    end

  end

end
