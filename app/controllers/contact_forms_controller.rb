class ContactFormsController < InheritedResources::Base
  actions :new, :create
  def create
    create!{ '/' }
  end
end