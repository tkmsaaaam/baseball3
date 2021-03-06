# frozen_string_literal: true

class SituationsController < ApplicationController
  before_action :set_situation, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new edit create update destroy]

  # GET /situations
  # GET /situations.json
  def index
    @situations = Situation.all
  end

  # GET /situations/1
  # GET /situations/1.json
  def show; end

  # GET /situations/new
  def new
    puts params[:game_id]
    @situation = Situation.new(game_id: params[:game_id], bat_counts: 1, inings: 1)
    @game = Game.find(params[:game_id])
  end

  # GET /situations/1/edit
  def edit; end

  # POST /situations
  # POST /situations.json
  def create
    @situation = Situation.new(situation_params)

    respond_to do |format|
      if @situation.save
        format.html { redirect_to @situation, notice: 'Situation was successfully created.' }
        format.json { render :show, status: :created, location: @situation }
      else
        format.html { redirect_to @situation }
        format.json { render json: @situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /situations/1
  # PATCH/PUT /situations/1.json
  def update
    respond_to do |format|
      if @situation.update(situation_params)
        format.html { redirect_to @situation, notice: 'Situation was successfully updated.' }
        format.json { render :show, status: :ok, location: @situation }
      else
        format.html { render :edit }
        format.json { render json: @situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /situations/1
  # DELETE /situations/1.json
  def destroy
    @situation.destroy
    respond_to do |format|
      format.html { redirect_to situations_url, notice: 'Situation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_situation
    @situation = Situation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def situation_params
    params.require(:situation).permit(:bat_counts, :inings, :game_id)
  end
end
