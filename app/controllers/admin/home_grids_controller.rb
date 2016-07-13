class Admin::HomeGridsController < Admin::ApplicationController
  before_action :set_record, :only => [:show, :edit, :update, :destroy]

  def index
    @home_grids = initialize_grid(HomeGrid.where(parent_id: 0))
  end

  def new
    @home_grid = HomeGrid.new
  end

  def create
    @home_grid = HomeGrid.new(home_grid_params)
    if @home_grid.save
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
    if @home_grid.update_attributes(home_grid_params)
      flash[:notice] = '修改成功'
      redirect_to :action => 'index'
    else
      render :edit
    end
  end

  def destroy
    @home_grid.destroy
    flash[:notice] = '資料已刪除'
    redirect_to :action => 'index'
  end

  private

  def set_record
    @home_grid = HomeGrid.find(params[:id])
  end
  # strong params
  def home_grid_params
    params.require(:home_grid).permit(:id, :caption, :link, :template_id,
                                 {sub_grids_attributes: [:parent_id, :id, :caption, :link, :row, :col, :size_x, :size_y, :_destroy, :picture_cache, :picture]}
    )
  end
end
