class KittensController < ApplicationController

    def index
        @kittens = Kitten.all
    end

    def new 
        @kitten = Kitten.new
    end

    def create
        @kitten = Kitten.create(kitten_params)
        if @kitten.save
            redirect_to @kitten
            flash[:success] = "Your kitten has been created!"
        else render 'new'
        end
    end

    def show 
        @kitten = Kitten.find(params[:id])
    end

    def edit
        @kitten = Kitten.find(params[:id])
    end

    def update
        @kitten = Kitten.find(params[:id])
        if @kitten.update(kitten_params)
            redirect_to @kitten
            flash[:success] = "Your kitten has a bit of a change..."           
        else render 'edit'
        end
    end

    def destroy
        @kitten = Kitten.find(params[:id])
        if @kitten.destroy
            redirect_to root_path
            flash[:success] = "Your kitty has been put to sleep"
        else    
            render 'show'
            flash[:notice] = "Your kitty couldn't be put to sleep"
        end
    end

    private
        def kitten_params
            params.require(:kitten).permit(:name, :age, :cuteness, :softness)
        end
end
