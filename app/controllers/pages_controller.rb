class PagesController < ApplicationController
  
  # back-end code for pages/index
  def index
  end

  # back-end code for pages/profile
  def profile
      User.find_by_username!(params[:username])
  end

  # back-end code for pages/project
  def project
  end
end
