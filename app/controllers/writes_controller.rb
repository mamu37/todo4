class WritesController < ApplicationController
  def index
    @writes = Write.all.order(created_at: :desc)
  end

  def index2
    @writes = Write.all.order(created_at: :desc)
  end

  def show
    @write = Write.find_by(id: params[:id])
  end

  def edit
    @write = Write.find_by(id: params[:id])
  end

  def create
    @write = Write.new(content: params[:content])
    @write.save
    redirect_to writes_path
  end

  def create2
    @write = Write.new(title: params[:title])
    @write.save
    redirect_to writes_index2_path
  end

  def new
    @write = Write.new
  end

  def new2
    @write = Write.new
  end

  def update
    @write = Write.find_by(id: params[:id])
    @write.update(content: params[:content])
    @write.save
    redirect_to writes_path
  end

  def destroy
    @write = Write.find_by(id: params[:id])
    @write.destroy
    redirect_to writes_path
  end

private
  def write_params
    params.require(:write).permit(:title, :content)
  end

end
