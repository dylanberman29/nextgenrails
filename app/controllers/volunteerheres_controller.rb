class VolunteerheresController < ApplicationController
  before_action :set_volunteerhere, only: [:show, :edit, :update, :destroy]

  # GET /volunteerheres
  # GET /volunteerheres.json
  def index
    @volunteers = Volunteerhere.all
  end

  def findvolunteer
    @volunteers = Volunteerhere.all
  end

  def contact
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
    volunteerhere_params = params.require(:volunteerhere).permit(:first_name,:last_name,:email)
    @volunteerhere = Volunteerhere.new(volunteerhere_params)
    if @volunteerhere.first_name == nil or @volunteerhere.first_name == ""
       redirect_to becomevolunteer_path, notice: 'Enter your first name!' and return
    end

    if @volunteerhere.last_name == nil or @volunteerhere.last_name == ""
       redirect_to becomevolunteer_path, notice: 'Enter your last name!' and return
    end

    if @volunteerhere.email == nil or @volunteerhere.email == ""
       redirect_to becomevolunteer_path, notice: 'Enter your email!' and return
    end

    respond_to do |format|
      if @volunteerhere.save
        format.html { redirect_to @volunteerhere, notice: 'Your NYCVolunteer account has successfully created.' }
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
      if volunteerhere_params[:first_name] == nil or volunteerhere_params[:first_name] == ""
         redirect_to edit_volunteerhere_path, notice: 'Enter your first name!' and return
      end

      if  volunteerhere_params[:last_name] == nil or volunteerhere_params[:last_name] == ""
         redirect_to edit_volunteerhere_path, notice: 'Enter your last name!' and return
      end

      if volunteerhere_params[:email] == nil or volunteerhere_params[:email] == ""
         redirect_to edit_volunteerhere_path, notice: 'Enter your email!' and return
      end
        respond_to do |format|
      if @volunteerhere.update(volunteerhere_params)
        format.html { redirect_to @volunteerhere, notice: 'Your NYCVolunteer account was successfully updated.' }
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
