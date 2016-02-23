class Music < ActiveRecord::Base

  validates :name, :url, :description, presence: true
  has_many :anfrages
end
