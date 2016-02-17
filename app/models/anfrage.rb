class Anfrage < ActiveRecord::Base

  validates :titel, :text, presence: true

end
