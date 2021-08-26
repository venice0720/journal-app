class TasksController < ApplicationController
    before_action :get_category
    def index
        @tasks = @category.tasks
    end

    def show
         @tasks= Task.find(params[:id])
    end

    def find_task_name
         @tasks= Task.find_by(task_name: params[:task_name])
    end
    
    def new
        @task = @category.tasks.build
    end

    def create
        @task = @category.tasks.build(task_params)
        if @task.save
            redirect_to category_tasks_path
        else
            render :new
        end
    end

    def edit
        @task = @category.tasks.find(params[:id])
    end
   

    def update
        @task = @category.tasks.find(params[:id])
        if @task.update(task_params)
            redirect_to category_tasks_path
        else
            render 'edit'
        end
    end

    def delete
       @category = Category.find(params[:category_id])
        @task = Task.find(params[:id])
        @task.destroy

        redirect_to @category
    end

    private
    def get_category
        @category = Category.find(params[:category_id])
    end

    def task_params
        params.require(:task).permit(:task_name, :task_description, :deadline, :iscompleted, :category_id)
    end

end  

