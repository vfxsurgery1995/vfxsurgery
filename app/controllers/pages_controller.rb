class PagesController < ApplicationController
  
  # back-end code for pages/index
  def index
  end

  # back-end code for pages/profile
  def profile
      User.find_by_username!(params[:username])
      
      @projects = Project.all.where("user_id = ?", User.find_by_username(params[:id]).id)
      @newProject = Project.new
  end

  # back-end code for pages/project
  def project
  end
end
