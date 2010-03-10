class ActivitiesController < InheritedResources::Base
  before_filter :require_user, :except => [:index, :show]
end
