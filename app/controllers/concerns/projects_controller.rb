class ProjectsController < ApplicationController
    
    def new
        @project = Project.new
    end
    
    def create
        @project = Project.new(project_params)
        @project.user_id = current_user.id
        respond_to do |f|
            if (@project.save)
                f.html {redirect_to "", notice: "Project created"}
            else
                f.html {redirect_to "", notice: "Error: Project Not Created."}
            end
        end
    end    
    
    
    private
    def project_params
        params.require(:project).permit(:user_id, :description)
    end    

end    