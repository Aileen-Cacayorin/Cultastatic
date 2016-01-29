class Location < ActiveRecord::Base


  attr_reader :full_address
  belongs_to :movie

  geocoded_by :full_address
  after_validation :geocode

  validates :street, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true

  def full_address
    "#{street}, #{city}, #{state} #{zip}"
  end
end
