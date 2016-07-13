class Admin::GroupsController < Admin::ApplicationController
  before_action :set_record, :only => [:edit, :update, :destroy]

  def index
    @groups_grid = initialize_grid(Group)
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
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

    if @group.update_attributes(group_params)
      flash[:notice] = '修改成功'
      redirect_to :action => 'index'
    else
      render :edit
    end
  end

  def destroy
    @group.destroy
    flash[:notice] = '資料已刪除'
    redirect_to :action => 'index'
  end
  
  private

  def set_record
    @group = Group.find(params[:id])
  end
  # strong params
  def group_params
    params.require(:group).permit(:id, :caption,
                                  { supervisor_ids: [ ]}, { menu_ids: [ ]})
  end
end
