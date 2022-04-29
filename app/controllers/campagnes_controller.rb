class CampagnesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_campagne, only: %i[ show edit update destroy ]

  # GET /campagnes or /campagnes.json
  def index
    @MembersList = User.where("membership_category = ?", "particulier" || "organisation").order('created_at desc')
    @CampagnesList = Campagne.all.order('created_at desc')
    @CampagnesMonthly = @CampagnesList.where(:created_at => (Time.now.midnight - 30.day)..Time.now.midnight)
    @CampagnesWeekly = @CampagnesMonthly.where(:created_at => (Time.now.midnight - 7.day)..Time.now.midnight)
    
  end

  # GET /campagnes/1 or /campagnes/1.json
  def show
  end

  # GET /campagnes/new
  def new
    @campagne = Campagne.new
  end

  # GET /campagnes/1/edit
  def edit
  end

  # POST /campagnes or /campagnes.json
  def create
    @campagne = current_user.campagnes.build(campagne_params)

    respond_to do |format|
      if @campagne.save
        format.html { redirect_to campagne_url(@campagne), notice: "Campagne was successfully created." }
        format.json { render :show, status: :created, location: @campagne }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @campagne.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campagnes/1 or /campagnes/1.json
  def update
    respond_to do |format|
      if @campagne.update(campagne_params)
        format.html { redirect_to campagne_url(@campagne), notice: "Campagne was successfully updated." }
        format.json { render :show, status: :ok, location: @campagne }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @campagne.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campagnes/1 or /campagnes/1.json
  def destroy
    @campagne.destroy

    respond_to do |format|
      format.html { redirect_to campagnes_url, notice: "Campagne was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campagne
      @campagne = Campagne.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def campagne_params
      params.require(:campagne).permit(:title, :heroImg, :content, :start_date, :slug, :status, :amount, :user_id)
    end
end
