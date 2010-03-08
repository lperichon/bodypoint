class Event < ActiveRecord::Base
  belongs_to :location
  belongs_to :activity
end
