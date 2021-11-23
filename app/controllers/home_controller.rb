class HomeController < ApplicationController

    def index
        @todos = Todo.all
    end

    def new
        @todo = Todo.new
    end
    
    def show
        @todo = Todo.find(params[:id])
    end

    def create
        @todo = Todo.create(params[:todo])
        if @todo.save
            redirect_to root_path
        else
            render :new
        end
    end
    
    def destroy
        @todo = Todo.find(params[:id]).destroy
        redirect_to root_path
    end
    

end
