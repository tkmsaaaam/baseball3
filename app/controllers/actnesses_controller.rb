class ActnessesController < ApplicationController
  before_action :set_actness, only: [:show, :edit, :update, :destroy]

  # GET /actnesses
  # GET /actnesses.json
  def index
    @actnesses = Actness.all
  end

  # GET /actnesses/1
  # GET /actnesses/1.json
  def show
  end

  # GET /actnesses/new
  def new
    puts params[:situation_id]
    situation = Situation.find(params[:situation_id])
    @actness = Actness.new(situation_id: params[:situation_id])
    @situation = Situation.find(params[:situation_id])
  end

  # GET /actnesses/1/edit
  def edit
  end

  # POST /actnesses
  # POST /actnesses.json
  def create
    @actness = Actness.new(actness_params)

    respond_to do |format|
      if @actness.save
        format.html { redirect_to @actness, notice: 'Actness was successfully created.' }
        format.json { render :show, status: :created, location: @actness }
      else
        format.html { render :new }
        format.json { render json: @actness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actnesses/1
  # PATCH/PUT /actnesses/1.json
  def update
    respond_to do |format|
      if @actness.update(actness_params)
        format.html { redirect_to @actness, notice: 'Actness was successfully updated.' }
        format.json { render :show, status: :ok, location: @actness }
      else
        format.html { render :edit }
        format.json { render json: @actness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actnesses/1
  # DELETE /actnesses/1.json
  def destroy
    @actness.destroy
    respond_to do |format|
      format.html { redirect_to actnesses_url, notice: 'Actness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actness
      @actness = Actness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actness_params
      params.require(:actness).permit(:ball_type, :swing, :ball, :strike, :foul, :ball_strike, :situation_id)
    end
end
