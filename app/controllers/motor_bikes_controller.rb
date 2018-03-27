class MotorBikesController < ApplicationController
  before_action :set_motor_bike, only: [:show, :edit, :update, :destroy]

  # GET /motor_bikes
  # GET /motor_bikes.json
  def index
    #@motor_bikes = MotorBike.all
  end

  # GET /motor_bikes/1
  # GET /motor_bikes/1.json
  def show
  end

  # GET /motor_bikes/new
  def new
    @motor_bike = MotorBike.new
  end

  # GET /motor_bikes/1/edit
  def edit
  end

  # POST /motor_bikes
  # POST /motor_bikes.json
  def create
    @motor_bike = MotorBike.new(motor_bike_params)

    respond_to do |format|
      if @motor_bike.save
        format.html { redirect_to @motor_bike, notice: 'Motor bike was successfully created.' }
        format.json { render :show, status: :created, location: @motor_bike }
      else
        format.html { render :new }
        format.json { render json: @motor_bike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motor_bikes/1
  # PATCH/PUT /motor_bikes/1.json
  def update
    respond_to do |format|
      if @motor_bike.update(motor_bike_params)
        format.html { redirect_to @motor_bike, notice: 'Motor bike was successfully updated.' }
        format.json { render :show, status: :ok, location: @motor_bike }
      else
        format.html { render :edit }
        format.json { render json: @motor_bike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motor_bikes/1
  # DELETE /motor_bikes/1.json
  def destroy
    @motor_bike.destroy
    respond_to do |format|
      format.html { redirect_to motor_bikes_url, notice: 'Motor bike was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motor_bike
      @motor_bike = MotorBike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motor_bike_params
      params.fetch(:motor_bike, {})
    end
end
