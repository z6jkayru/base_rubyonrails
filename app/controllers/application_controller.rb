class ApplicationController < ActionController::Base
  before_action :set_links

  def set_links
    @links = [
      { :title => "About US", :redirectTo => "/" },
      { :title => "Contact", :redirectTo => "/" },
    ];
  end
end
