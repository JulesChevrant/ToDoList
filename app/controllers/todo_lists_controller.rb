class TodoListsController < ApplicationController
    def index
    @todo_lists = TodoList.all
    end

    def show
      @todo_list = TodoList.find(params[:id])
    end

    def new
    @todo_list = TodoList.new
    end

    def create
      @todo_list = TodoList.new(todo_list_params)
      if @todo_list.save!
        redirect_to todo_list_path(@todo_list), notice: 'Your list was successfully created.'
      else
        render :new
      end
    end

    # def edit
    # end

    # def update
    # @*model*.update(*model*_params)
    # redirect_to *model*_path(@*model*), notice: '*ModelClassName* was successfully updated.'
    # end

    # def destroy
    # @*model*.destroy
    # redirect_to *model*s_path, notice: '*ModelClassName* was successfully destroyed.'
    # end

    private

    # def set_*model*
    # @*model* = *ModelClassName*.find(params[:id])
    # end

    def todo_list_params
    params.require(:todo_list).permit(:title, :description)
    end
end
