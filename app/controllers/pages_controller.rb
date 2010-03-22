class PagesController < HighVoltage::PagesController

  def show
    render :template => current_page, :layout => get_layout
  end

  protected
  
  def get_layout
    case params[:id]
      when 'index'
        'home'
      else
        'application'
    end
  end

end