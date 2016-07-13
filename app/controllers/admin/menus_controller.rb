class Admin::MenusController < Admin::ApplicationController
  before_action :set_record, :only => [:show, :edit, :update, :destroy]

  def index
    @menus_grid = initialize_grid(Menu.where(parent_id: 0).order(:seq))
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      flash[:notice] = '新增成功'
      redirect_to :action => 'index'
    else
      render :new
    end
  end

  def edit
  #
  end

  def update
    if @menu.update_attributes(menu_params)
      flash[:notice] = '修改成功'
      redirect_to :action => 'index'
    else
      render :edit
    end
  end

  def destroy
    @menu.destroy
    flash[:notice] = '資料已刪除'
    redirect_to :action => 'index'
  end

  private

  def set_record
    @menu = Menu.find(params[:id])
  end
  # strong params
  def menu_params
    params.require(:menu).permit(:caption, :action, :icon, :seq,
                                       {sub_menus_attributes: [:parent_id, :id, :caption, :action, :icon, :seq, :_destroy,
                                                               sub_menus_attributes: [:parent_id, :id, :caption, :action, :icon, :seq, :_destroy,
                                                                                      sub_menus_attributes: [:parent_id, :id, :caption, :action, :icon, :seq, :_destroy]]]}
    )
  end
end
