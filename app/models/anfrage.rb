class Anfrage < ActiveRecord::Base

  validates :titel, :text, presence: true

  belongs_to :event
  belongs_to :music
end
