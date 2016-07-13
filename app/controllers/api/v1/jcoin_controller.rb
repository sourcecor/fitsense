class Api::V1::JcoinController < ApplicationController
  # http_basic_authenticate_with :name => "myfinance", :password => "credit123"
  skip_before_filter :authenticate_user! # 移除認證
  before_filter :fetch_jcard, :except => [:index] # 執行動作前, 先查詢卡號
  #
  def fetch
    # processing jobs
    # bla bla ...

    # final output
    respond_to do |format|
      # format.json { render json: @jcard }
      format.json { render json: { card_id: params[:id], v1: "hello", v2: "world"} }
    end
  end

  def trans
    # processing jobs
    # bla bla ...

    # final output
    respond_to do |format|
      format.json { render json: { card_id: params[:id], v1: "hello", v2: "world"} }
    end
  end

  protected
  def fetch_jcard
    # @jcard = JCard.where(card_id: params[:id])
    puts params[:id]
  end
end
