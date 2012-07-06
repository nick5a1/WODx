class WorkoutsController < ApplicationController
  # GET /workouts
  # GET /workouts.json
  def index
    @workouts = Workout.all
    render :layout => "list"
    
    #respond_to do |format|
      #format.html # index.html.erb
      #format.json { render json: @workouts }
    #end
  end
  
  def random
    @equipment_ids = params[:workout][:equipment_ids].collect{|s| s.to_i} # grabs equipment id's from params and turns back into an array of integers
    @all_equipment_ids = Equipment.all(:select => :id).collect(&:id)      # returns an array of all equipment ids
    @equipment_dont_have = (@all_equipment_ids - @equipment_ids) * ","    # returns an array of all the equipment the user doesn't have
    @workouts = Workout.joins("left join equipment_workouts on workout_id = workouts.id and equipment_id in (#{@equipment_dont_have})").where("equipment_id is null")
    @workout = @workouts.sample
    
    respond_to do |format|
    format.html # random.html.erb
    format.json { render json: @workout }
    end
  end

  # GET /workouts/1
  # GET /workouts/1.json
  def show
    @workout = Workout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @workout }
    end
  end

  # GET /workouts/new
  # GET /workouts/new.json
  def new
    @workout = Workout.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @workout }
    end
  end

  # GET /workouts/1/edit
  def edit
    @workout = Workout.find(params[:id])
  end

  # POST /workouts
  # POST /workouts.json
  def create
    @workout = Workout.new(params[:workout])

    respond_to do |format|
      if @workout.save
        format.html { redirect_to @workout, notice: 'Workout was successfully created.' }
        format.json { render json: @workout, status: :created, location: @workout }
      else
        format.html { render action: "new" }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /workouts/1
  # PUT /workouts/1.json
  def update
    @workout = Workout.find(params[:id])

    respond_to do |format|
      if @workout.update_attributes(params[:workout])
        format.html { redirect_to @workout, notice: 'Workout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy

    respond_to do |format|
      format.html { redirect_to workouts_url }
      format.json { head :no_content }
    end
  end
end
