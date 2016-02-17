class Event < ActiveRecord::Base

  validates :name, :location, :description, :time, :date, presence: true

end
