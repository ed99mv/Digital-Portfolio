class Api::Portfolio::ProjectsController < ApplicationController
    def index
        @projects = Project.all
        respond_to do |format|
            format.json { render :json => @projects }
        end
    end
end
