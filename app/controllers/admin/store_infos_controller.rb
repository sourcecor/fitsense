class Admin::StoreInfosController < Admin::ApplicationController
  before_action :set_record, :only => [:edit, :update, :destroy]

  def index
    @storeInfos_grid = initialize_grid(StoreInfo)
  end

  def new
    @storeInfo = StoreInfo.new
  end

  def create
    @storeInfo = StoreInfo.new(storeInfo_params)
    if @storeInfo.save
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

    if @storeInfo.update_attributes(storeInfo_params)
      flash[:notice] = '修改成功'
      redirect_to :action => 'index'
    else
      render :edit
    end
  end

  def destroy
    @storeInfo.destroy
    flash[:notice] = '資料已刪除'
    redirect_to :action => 'index'
  end

  private

  def set_record
    @storeInfo = StoreInfo.find(params[:id])
  end
  # strong params
  def storeInfo_params
    params.require(:store_info).permit(:id, :caption, :phone, :address, :content)
  end
end
