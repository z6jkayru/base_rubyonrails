class ApplicationController < ActionController::Base
  before_action :set_links

  def set_links
    @userId = session[:current_user_id]
    @links = [
      { :title => "About US", :redirectTo => "/" },
      { :title => "Contact", :redirectTo => "/" },
    ];
  end
end
