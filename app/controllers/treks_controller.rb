class TreksController < ApplicationController
  before_action :set_trek, only: %i[show edit update destroy complete]
  has_scope :by_store
  has_scope :by_address
  has_scope :by_date
  has_scope :completed, type: :boolean

  # GET /treks or /treks.json
  def index
    @q = if driver_logged_in?
           Trek.joins(:drivers).where('autos.driver_id=?', @current_driver.id).ransack(params[:q])
         else
           Trek.joins(:drivers).ransack(params[:q])
         end
    @treks = apply_scopes(@q.result).page(params[:page]).per(10)
  end

  # GET /treks/1 or /treks/1.json
  def show; end

  # GET /treks/new
  def new
    @trek = Trek.new
  end

  # GET /treks/1/edit
  def edit; end

  def complete
    @trek.completed = true
    @trek.save
    redirect_to treks_path
  end

  # POST /treks or /treks.json
  def create
    @trek = Trek.new(trek_params)

    respond_to do |format|
      if @trek.save
        format.html { redirect_to trek_url(@trek), notice: 'Заявка создана' }
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
        format.html { redirect_to trek_url(@trek), notice: 'Заявка имзенена' }
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
      format.html { redirect_to treks_url, notice: 'Заявка удалена' }
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
