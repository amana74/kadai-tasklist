class TasksController < ApplicationController
    def index
        @tasks = Task.all
  end

  def show
      @tasks = Task.find(params[:id])
  end

  def new
      @tasks = Task.new
  end

  def create
      @tasks = task.new(task_params)

    if @tasks.save
      flash[:success] = 'task が正常に投稿されました'
      redirect_to @tasks
    else
      flash.now[:danger] = 'task が投稿されませんでした'
      render :new
  end
end
  def edit
      def edit
    @tasks = Task.find(params[:id])
  end
  end
  def message_params
    params.require(:task).permit(:content)
  end

  def update
      @tasks = Task.find(params[:id])

    if @tasks.update(message_params)
      flash[:success] = 'task は正常に更新されました'
      redirect_to @tasks
    else
      flash.now[:danger] = 'task は更新されませんでした'
      render :edit
    end
  end

  def destroy
      @tasks = Task.find(params[:id])
    @tasks.destroy

    flash[:success] = 'task は正常に削除されました'
    redirect_to tasks_url
      
  end
end

