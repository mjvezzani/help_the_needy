class NeedyPeopleController < ApplicationController
  before_action :set_needy_person, only: [:show, :edit, :update, :destroy]

  # GET /needy_people
  # GET /needy_people.json
  def index
    @needy_people = NeedyPerson.all
  end

  # GET /needy_people/1
  # GET /needy_people/1.json
  def show
  end

  # GET /needy_people/new
  def new
    @needy_person = NeedyPerson.new
  end

  # GET /needy_people/1/edit
  def edit
  end

  # POST /needy_people
  # POST /needy_people.json
  def create
    @needy_person = NeedyPerson.new(needy_person_params)

    respond_to do |format|
      if @needy_person.save
        format.html { redirect_to @needy_person, notice: 'Needy person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @needy_person }
      else
        format.html { render action: 'new' }
        format.json { render json: @needy_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /needy_people/1
  # PATCH/PUT /needy_people/1.json
  def update
    respond_to do |format|
      if @needy_person.update(needy_person_params)
        format.html { redirect_to @needy_person, notice: 'Needy person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @needy_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /needy_people/1
  # DELETE /needy_people/1.json
  def destroy
    @needy_person.destroy
    respond_to do |format|
      format.html { redirect_to needy_people_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_needy_person
      @needy_person = NeedyPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def needy_person_params
      params.require(:needy_person).permit(:first_name, :last_name, :age, :address, :comments, :organization)
    end
end
