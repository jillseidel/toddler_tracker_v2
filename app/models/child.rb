class Child < ActiveRecord::Base

has_many :symptoms

has_many :foods

has_many :sleeps

has_many :words

belongs_to :user

validate :dob_cannot_be_in_the_future

def dob_cannot_be_in_the_future
  if dob > Date.today
    errors.add(:dob, "cannot be in the future")
  end

end

end
