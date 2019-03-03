class ShopDatabasesController < ApplicationController
  before_action :set_shop_database, only: [:show, :edit, :update, :destroy]
  
  #ログインしていない場合、新規投稿や編集しようとするとログイン画面にリダイレクト（20190303）
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  
  #before_action :authenticate_user, only: [:new, :edit,:create, :update, :destroy]
  
  # GET /shop_databases
  # GET /shop_databases.json
  
  def index
    @q = ShopDatabase.ransack(params[:q])
    @shop_databases = @q.result
    #ドロップダウンの選択肢に４７都道府県に加えて「全国」を入れるため
    @zenkoku = JpPrefecture::Prefecture.new
    @zenkoku.name = "全国"
  end

  # GET /shop_databases/1
  # GET /shop_databases/1.json
  def show
  end

  # GET /shop_databases/new
  def new
    @shop_database = ShopDatabase.new
  end

  # GET /shop_databases/1/edit
  def edit
  end

  # POST /shop_databases
  # POST /shop_databases.json
  def create
    @shop_database = ShopDatabase.new(shop_database_params)

    respond_to do |format|
      if @shop_database.save
        format.html { redirect_to @shop_database, notice: '新たに投稿しました' }
        format.json { render :show, status: :created, location: @shop_database }
      else
        format.html { render :new }
        format.json { render json: @shop_database.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_databases/1
  # PATCH/PUT /shop_databases/1.json
  def update
    respond_to do |format|
      if @shop_database.update(shop_database_params)
        format.html { redirect_to @shop_database, notice: '投稿の更新に成功しました' }
        format.json { render :show, status: :ok, location: @shop_database }
      else
        format.html { render :edit }
        format.json { render json: @shop_database.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_databases/1
  # DELETE /shop_databases/1.json
  def destroy
    @shop_database.destroy
    respond_to do |format|
      format.html { redirect_to shop_databases_url, notice: '投稿を削除しました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_database
      @shop_database = ShopDatabase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_database_params
      params.require(:shop_database).permit(:shop_name, :introduction, :prefecture_code, :address, :tel_number, :genre, :feature, :photo, :comment)
    end
end