class LocationsController < InheritedResources::Base
  before_filter :require_user
end
