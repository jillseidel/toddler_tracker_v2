class Word < ActiveRecord::Base

  belongs_to :child
validates :date, presence: true

end
