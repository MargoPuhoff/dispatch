class TreksController < ApplicationController
  before_action :set_trek, only: %i[ show edit update destroy ]

  # GET /treks or /treks.json
  def index
		if driver_logged_in?
			@q = Trek.joins(:drivers).where("autos.driver_id=?", @current_driver.id).ransack(params[:q])
		else
			@q = Trek.joins(:drivers).ransack(params[:q])
		end
		@treks = @q.result(distinct: true)
  end

  # GET /treks/1 or /treks/1.json
  def show
  end

  # GET /treks/new
  def new
    @trek = Trek.new
  end

  # GET /treks/1/edit
  def edit
  end

  # POST /treks or /treks.json
  def create
    @trek = Trek.new(trek_params)

    respond_to do |format|
      if @trek.save
        format.html { redirect_to trek_url(@trek), notice: "Заявка создана" }
        format.json { render :show, status: :created, location: @trek }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treks/1 or /treks/1.json
  def update
    respond_to do |format|
      if @trek.update(trek_params)
        format.html { redirect_to trek_url(@trek), notice: "Заявка имзенена" }
        format.json { render :show, status: :ok, location: @trek }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treks/1 or /treks/1.json
  def destroy
    @trek.destroy!

    respond_to do |format|
      format.html { redirect_to treks_url, notice: "Заявка удалена" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trek
      @trek = Trek.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trek_params
      params.require(:trek).permit(:address, :store, :trek_date, :auto_id)
    end
end
