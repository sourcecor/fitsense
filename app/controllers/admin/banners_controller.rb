class Admin::BannersController < Admin::ApplicationController
  before_action :set_record, :only => [:edit, :update, :destroy]

  def index
    @banners_grid = initialize_grid(Banner.where(parent_id: 0).order(:seq))
  end

  def new
    @banner = Banner.new
    @banner.sub_banners.build
  end

  def create
    @banner = Banner.new(banner_params)
    if @banner.save
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
    if @banner.update_attributes(banner_params)
      flash[:notice] = '修改成功'
      redirect_to :action => 'index'
    else
      render :edit
    end
  end

  def destroy
    @banner.destroy
    flash[:notice] = '資料已刪除'
    redirect_to :action => 'index'
  end

  private

  def set_record
    @banner = Banner.find(params[:id])
  end
  # strong params
  def banner_params
    params.require(:banner).permit(:id, :caption, :description, :link, :picture, :seq, :_destroy,
                                   { sub_banners_attributes: [ :id, :caption, :description, :link, :picture, :seq, :_destroy ] })
  end
end
