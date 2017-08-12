class BaseFamiliarsController < ApplicationController
  before_action :set_base_familiar, only: [:show, :edit, :update, :destroy]

  # GET /base_familiars
  # GET /base_familiars.json
  def index
    @base_familiars = BaseFamiliar.all
  end

  # GET /base_familiars/1
  # GET /base_familiars/1.json
  def show
  end

  # GET /base_familiars/new
  def new
    @base_familiar = BaseFamiliar.new
  end

  # GET /base_familiars/1/edit
  def edit
  end

  # POST /base_familiars
  # POST /base_familiars.json
  def create
    @base_familiar = BaseFamiliar.new(base_familiar_params)

    respond_to do |format|
      if @base_familiar.save
        format.html { redirect_to @base_familiar, notice: 'Base familiar was successfully created.' }
        format.json { render :show, status: :created, location: @base_familiar }
      else
        format.html { render :new }
        format.json { render json: @base_familiar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_familiars/1
  # PATCH/PUT /base_familiars/1.json
  def update
    respond_to do |format|
      if @base_familiar.update(base_familiar_params)
        format.html { redirect_to @base_familiar, notice: 'Base familiar was successfully updated.' }
        format.json { render :show, status: :ok, location: @base_familiar }
      else
        format.html { render :edit }
        format.json { render json: @base_familiar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_familiars/1
  # DELETE /base_familiars/1.json
  def destroy
    @base_familiar.destroy
    respond_to do |format|
      format.html { redirect_to base_familiars_url, notice: 'Base familiar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_familiar
      @base_familiar = BaseFamiliar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def base_familiar_params
      params.require(:base_familiar).permit(:name, :health, :power, :element, :background, :move_ids => [])
    end
end
