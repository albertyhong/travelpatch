class Trip < ActiveRecord::Base
  attr_accessible :creator, :end_date, :start_date, :trip_description, :trip_name, :user_id

  belongs_to :user 
  has_many :destinations, :through => :trip_destinations

end
