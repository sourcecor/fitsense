class Admin::SupervisorsController < Admin::ApplicationController
  include ApplicationHelper

  before_action :set_record, :only => [:edit, :update, :destroy]

  def index
    @supervisors_grid = initialize_grid(Supervisor)
  end

  def new
    @supervisor = Supervisor.new
  end

  def create
    @supervisor = Supervisor.new(supervisor_params)
    @supervisor.password=
    if @supervisor.save
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

    if(supervisor_params[:password].empty? && @supervisor.update_without_password(supervisor_params))
       flash[:notice] = '修改成功'
       redirect_to :action => 'index'
    elsif @supervisor.update_attributes(supervisor_params)
      flash[:notice] = '修改成功'
      redirect_to :action => 'index'
    else
      render :edit
    end
  end

  def destroy
    @supervisor.destroy
    flash[:notice] = '資料已刪除'
    redirect_to :action => 'index'
  end

  def change_password
    @supervisor = Supervisor.find(current_admin_supervisor.id)
    respond_to do |format|
      supervisor_params.delete(:id)
      supervisor_params.delete(:email)
      if @supervisor.validate(supervisor_params)&&@supervisor.update_with_password(supervisor_params)
        sign_in @supervisor, :bypass => true
        format.json { render json: [], status: :created }
        format.js
      else
        format.json { render json: @supervisor.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_record
    @supervisor = Supervisor.find(params[:id])
  end
  # strong params
  def supervisor_params
    params.require(:supervisor).permit(:id, :nickname, :email, :current_password, :password, :password_confirmation)
  end
end
