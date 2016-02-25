class Music < ActiveRecord::Base

  validates :name, :url, :description, presence: true
  has_many :anfrages
  belongs_to :genre

  ratyrate_rateable "url"
end
