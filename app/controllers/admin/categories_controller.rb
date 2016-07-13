class Admin::CategoriesController < Admin::ApplicationController
  before_action :set_record, :only => [:edit, :update, :destroy]

  def index
    @categories_grid = initialize_grid(Category.where(parent_id: 0).order(:seq))
  end

  def new
    @category = Category.new
    @category.pictures.build
  end

  def create
    @category = Category.new(category_params)
    if @category.save
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
    if @category.update_attributes(category_params)
      flash[:notice] = '修改成功'
      redirect_to :action => 'index'
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    flash[:notice] = '資料已刪除'
    redirect_to :action => 'index'
  end

  private

  def set_record
    @category = Category.find(params[:id])
  end
  # strong params
  def category_params
    params.require(:category).permit(:id, :parent_id, :caption, :description, :seq, :_destroy, { pictures_attributes: [ :id, :asset_cache, :asset, :seq, :_destroy ] },
      { sub_categories_attributes: [ :id, :parent_id, :caption, :description, :seq, :_destroy, { pictures_attributes: [ :id, :asset_cache, :asset, :seq, :_destroy ] },
                                     { sub_categories_attributes: [ :id, :parent_id, :caption, :description, :seq, :_destroy,{ pictures_attributes: [ :id, :asset_cache, :asset, :seq, :_destroy ] },
                                                                    { sub_categories_attributes: [ :id, :parent_id, :caption, :description, :seq, :_destroy,{ pictures_attributes: [ :id, :asset_cache, :asset, :seq, :_destroy ] } ]}]}
      ]})
  end
end
