class VolunteerheresController < ApplicationController
  before_action :set_volunteerhere, only: [:show, :edit, :update, :destroy]

  # GET /volunteerheres
  # GET /volunteerheres.json
  def index
    @volunteerheres = Volunteerhere.all
  end

  # GET /volunteerheres/1
  # GET /volunteerheres/1.json
  def show
  end

  # GET /volunteerheres/new
  def new
    @volunteerhere = Volunteerhere.new
  end

  # GET /volunteerheres/1/edit
  def edit
  end

  def becomevolunteer
    @volunteer = Volunteerhere.new
  end

  # POST /volunteerheres
  # POST /volunteerheres.json
  def create
    @volunteerhere = Volunteerhere.new(volunteerhere_params)

    respond_to do |format|
      if @volunteerhere.save
        format.html { redirect_to @volunteerhere, notice: 'Volunteerhere was successfully created.' }
        format.json { render :show, status: :created, location: @volunteerhere }
      else
        format.html { render :new }
        format.json { render json: @volunteerhere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /volunteerheres/1
  # PATCH/PUT /volunteerheres/1.json
  def update
    respond_to do |format|
      if @volunteerhere.update(volunteerhere_params)
        format.html { redirect_to @volunteerhere, notice: 'Volunteerhere was successfully updated.' }
        format.json { render :show, status: :ok, location: @volunteerhere }
      else
        format.html { render :edit }
        format.json { render json: @volunteerhere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteerheres/1
  # DELETE /volunteerheres/1.json
  def destroy
    @volunteerhere.destroy
    respond_to do |format|
      format.html { redirect_to volunteerheres_url, notice: 'Volunteerhere was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_volunteerhere
      @volunteerhere = Volunteerhere.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def volunteerhere_params
      params.require(:volunteerhere).permit(:first_name, :last_name, :email)
    end
end
