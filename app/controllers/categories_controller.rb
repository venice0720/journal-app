class CategoriesController < ApplicationController
    before_action :get_user
    before_action :require_user_logged_in!
    def index
        @categories = @user.categories
        # @categories = Category.all
    end

    def show
         @categories= Category.find(params[:id])
    end

    def find_title
         @categories= Category.find_by(name: params[:name])
    end
    
    def new
        @category =  @user.categories.build
    end

    def create
        @category = @user.categories.build(category_params)
        if @category.save
            redirect_to user_categories_path
        else
            render :new
        end
    end

    def edit
        @category = @user.category.find(params[:id])
    end

    def update
        @category = @user.categories.find(params[:id])
        if @category.update(category_params)
            redirect_to user_category_path
        else
            render 'edit'
        end
    end

    def destroy
        @user = User.find(params[:user_id])
        @category= @user.category.find(params[:id])
        @category.destroy

        redirect_to user_categories_path
    end

    private
    def get_user
        @user = User.find_by(id: session[:user_id]) if session[:user_id]
    end
    def category_params
        params.require(:category).permit(:user_id,:title, :description)
    end

end
