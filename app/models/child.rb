class Child < ActiveRecord::Base

has_many :symptoms

has_many :foods

has_many :sleeps

has_many :words

belongs_to :user

end
