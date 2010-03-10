class EventsController < InheritedResources::Base
  before_filter :require_user
  belongs_to :activity
end
