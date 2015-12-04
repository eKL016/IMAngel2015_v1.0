class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:master, :edit, :update, :destroy]
  def index
    @pages=Page.all
  end
  def show
  end
  def master
    @page = Page.new
  end
  def edit
    @page = Page.find(params[:id])
  end
  def create
    @page = Page.create(page_params)
    @page.title = current_user.master.name
    @page.finish = false
    if @page.save
      redirect_to master_path, notice: '指派任務成功！'
    else
      flash.now[:alert] = "指派任務失敗，請再試一次！"
      render :master
    end
  end
  def update
   @page = Page.find(params[:id])
   @page.update(page_params)
   current_user.update_attribute(:score, current_user.score + @page.score)
   @page.update_attribute(:finish, true)
   redirect_to root_path
   flash.now[:notice] = "給分成功！"
  end
  def remove_all
   Page.delete_all
   flash[:notice] = "已成功重置任務！"
   redirect_to root_path
  end
end


private
  def page_params
    params.require(:page).permit(:description,:score,:finish)
end