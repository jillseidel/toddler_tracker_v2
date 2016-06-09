class Food < ActiveRecord::Base

belongs_to :child

validates :date, presence: true

end
