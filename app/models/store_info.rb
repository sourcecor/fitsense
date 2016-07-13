class StoreInfo < ActiveRecord::Base
  acts_as_mappable :auto_geocode => {:field=>:address, :error_message=>'Could not geocode address'},
                   :lat_column_name => :latitude,
                   :lng_column_name => :longitude

  validates :caption, :address, :phone, presence: true

  before_save :set_coordinate

  def set_coordinate
    res = Geokit::Geocoders::MultiGeocoder.geocode(self.address)
    self.latitude = res.lat
    self.longitude = res.lng
  end
end
