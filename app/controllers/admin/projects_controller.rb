class Admin::ProjectsController < ApplicationController
    def index
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
    end

    def edit
        @project = Project.find(params[:id])
        @tecnologies = Tecnology.all
    end

    def update
        @project = Project.find(params[:id])
    
        if @project.update(project_params)
          redirect_to '/admin/projects'
        else
          render :edit, status: :unprocessable_entity
        end
    end

    def new
        @project = Project.new
        @tecnologies = Tecnology.all
    end
    
    
    def create
        @project = Project.new(project_params)
    
        if @project.save
         
          
          redirect_to admin_projects_path

        end
    end

    def destroy
        @project = Project.find(params[:id])
        @project.destroy
        redirect_to '/admin/projects'
    end
    
    private 
    
      def project_params
<<<<<<< HEAD
        params.require(:project).permit(:name, :description, :responsabilities, :start_date, :finish_date, :user_id, authors_attributes: [:admin])
=======
        params.require(:project).permit(:name, :description, :responsabilities, :start_date, :finish_date, :user_id, :tecnologies_id)
>>>>>>> b3bf2522305affd2c9c6247b18cb829527ef89d7
      end
end

