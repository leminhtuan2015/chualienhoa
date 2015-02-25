class InfosController < ApplicationController
  def index
    @infos = Info.order('id DESC')
  end

  def new
    @info = Info.new
  end

  def create
    @info = Info.new info_params
    if @info.save

     @newfeed = Newfeed.new
     @newfeed.info_id = @info.id
     @newfeed.save

      redirect_to info_index_path
    else
    	flash[:danger] = "Create fails, please retry."
      render 'new'
    end
  end

  def show
    @info = Info.find params[:id]
  end

  def edit
    @info = Info.find params[:id]
  end

  def update
    @info = Info.find params[:id]
    if @info.update_attributes info_params
      redirect_to info_index_path
    else
      render 'edit'
    end
  end

  def destroy
    @info = Info.find params[:id]
    @info.destroy
    redirect_to info_index_path
  end

  private
  def info_params
    params.require(:info).permit(:name, :content, :during, :place, :description, :image_link, :image_upload)
  end
end