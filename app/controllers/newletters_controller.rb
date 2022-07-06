class NewlettersController < ApplicationController
  before_action :set_newletter, only: %i[ show edit update destroy ]

  # GET /newletters or /newletters.json
  def index
    @newletters = Newletter.all
  end

  # GET /newletters/1 or /newletters/1.json
  def show
  end

  # GET /newletters/new
  def new
    @newletter = Newletter.new
  end

  # GET /newletters/1/edit
  def edit
  end

  # POST /newletters or /newletters.json
  def create
    @newletter = Newletter.new(newletter_params)

    respond_to do |format|
      if @newletter.save
        format.html { redirect_to newletter_url(@newletter), notice: "Newletter was successfully created." }
        format.json { render :show, status: :created, location: @newletter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @newletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newletters/1 or /newletters/1.json
  def update
    respond_to do |format|
      if @newletter.update(newletter_params)
        format.html { redirect_to newletter_url(@newletter), notice: "Newletter was successfully updated." }
        format.json { render :show, status: :ok, location: @newletter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @newletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newletters/1 or /newletters/1.json
  def destroy
    @newletter.destroy

    respond_to do |format|
      format.html { redirect_to newletters_url, notice: "Newletter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newletter
      @newletter = Newletter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def newletter_params
      params.require(:newletter).permit(:first_name, :last_name, :email)
    end
end
