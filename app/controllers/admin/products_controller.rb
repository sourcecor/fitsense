class Admin::ProductsController < Admin::ApplicationController
  before_action :set_record, :only => [:edit, :update, :destroy]

  def index
    @products_grid = initialize_grid(Product.not_deleted)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
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

    if @product.update_attributes(product_params)
      flash[:notice] = '修改成功'
      redirect_to :action => 'index'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    flash[:notice] = '資料已刪除'
    redirect_to :action => 'index'
  end

  private

  def set_record
    @product = Product.find(params[:id])
  end
  # strong params
  def product_params
    params.require(:product).permit(:id, :caption, :sub_caption, :brief, :size_info, :spec, :itemcode, :unit_price, :sale_price, :cost,
                                    { profiles_attributes: [ :id, :asset_cache, :asset, :seq, :_destroy ] },
                                    { sub_product_colors_attributes: [:id, :color, :color_pic, :color_pic_cache, :_destroy,
                                                                      { pictures_attributes: [ :id, :asset_cache, :asset, :seq, :_destroy ] },
                                                                      { sub_products_attributes: [:id, :itemcode, :color, :size, :qty, :seq, :_destroy]} ]},
                                    { category_ids: [ ]})
  end
end
