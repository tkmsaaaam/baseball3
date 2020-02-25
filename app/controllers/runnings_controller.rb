class RunningsController < ApplicationController
  before_action :set_running, only: [:show, :edit, :update, :destroy]

  # GET /runnings
  # GET /runnings.json
  def index
    @runnings = Running.all
  end

  # GET /runnings/1
  # GET /runnings/1.json
  def show
  end

  # GET /runnings/new
  def new
    puts params[:situation_id]
    actness =Actness.find(params[:situation_id])
    @running = Running.new(situation_id: params[:situation_id],place: 1,base_id: 2,go_counts: 1,)
    @situation = Situation.find(params[:situation_id])
  end

  # GET /runnings/1/edit
  def edit
  end

  # POST /runnings
  # POST /runnings.json
  def create
    @running = Running.new(running_params)

    respond_to do |format|
      if @running.save
        format.html { redirect_to @running, notice: 'Running was successfully created.' }
        format.json { render :show, status: :created, location: @running }
      else
        format.html { redirect_to @running }
        format.json { render json: @running.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /runnings/1
  # PATCH/PUT /runnings/1.json
  def update
    respond_to do |format|
      if @running.update(running_params)
        format.html { redirect_to @running, notice: 'Running was successfully updated.' }
        format.json { render :show, status: :ok, location: @running }
      else
        format.html { render :edit }
        format.json { render json: @running.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runnings/1
  # DELETE /runnings/1.json
  def destroy
    @running.destroy
    respond_to do |format|
      format.html { redirect_to runnings_url, notice: 'Running was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_running
      @running = Running.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def running_params
      params.require(:running).permit(:place, :base_id, :go_counts, :reason, :situation_id)
    end
end
