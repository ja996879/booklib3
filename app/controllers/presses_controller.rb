class PressesController < ApplicationController
  include ApplicationHelper
  before_action :set_press, only: [:show, :edit, :update, :destroy]
  before_action :imahido
  before_action :admin_user
  # GET /presses
  # GET /presses.json
  def index
    @presses = Press.all
  end

  # GET /presses/1
  # GET /presses/1.json
  def show
  end

  # GET /presses/new
  def new
    @press = Press.new
  end

  # GET /presses/1/edit
  def edit
  end

  # POST /presses
  # POST /presses.json
  def create
    @press = Press.new(press_params)

    respond_to do |format|
      if @press.save
        format.html { redirect_to @press, notice: 'Press was successfully created.' }
        format.json { render action: 'show', status: :created, location: @press }
      else
        format.html { render action: 'new' }
        format.json { render json: @press.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presses/1
  # PATCH/PUT /presses/1.json
  def update
    respond_to do |format|
      if @press.update(press_params)
        format.html { redirect_to @press, notice: 'Press was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @press.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presses/1
  # DELETE /presses/1.json
  def destroy
    @press.destroy
    respond_to do |format|
      format.html { redirect_to presses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_press
      @press = Press.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def press_params
      params.require(:press).permit(:name, :netsite)
    end
end
