class LovesController < ApplicationController
    before_action :find_loves, only: [:show, :edit, :update, :destroy]

    def index
        @loves = Love.all
    end
    
    def new
        @love = Love.new
    end
    
    def create
        @love = Love.new(loves_params)
        
        if @love.save
            redirect_to @love
        else
            render 'new'
        end
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        if @love.update(loves_params)
            redirect_to @love
        else
            render 'edit'
        end
    end
    
    def destroy
        @love.destroy
        redirect_to loves_path
    end
    
    private
    
    def find_loves
        @love = Love.find(params[:id])
    end
    
    def loves_params
        params.require(:love).permit(:title, :content, :image)
    end
end
