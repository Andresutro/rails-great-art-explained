class ArtsController < ApplicationController
  before_action :set_art, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!, only: :show

  # GET /arts or /arts.json
  def index
    @arts = policy_scope(Art)
    authorize @arts
  end

  # GET /arts/1 or /arts/1.json
  def show
    @explanation =  Explanation.new
    @appreciation = Appreciation.new
    @user = @art.user
    @donation = @user.donations.last
  end

  def vr
    skip_authorization
  end


  # GET /arts/new
  def new
    @art = Art.new
    authorize @art

  end

  # GET /arts/1/edit
  def edit
  end

  # POST /arts or /arts.json
  def create
    @art = Art.new(art_params)
    @user_id =  current_user.id
    @art.user_id = @user_id
    authorize @art

    respond_to do |format|
      if @art.save
        format.html { redirect_to art_url(@art), notice: "Art was successfully created." }
        format.json { render :show, status: :created, location: @art }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arts/1 or /arts/1.json
  def update
    authorize @art
    respond_to do |format|
      if @art.update(art_params)
        format.html { redirect_to art_url(@art), notice: "Art was successfully updated." }
        format.json { render :show, status: :ok, location: @art }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arts/1 or /arts/1.json
  def destroy
    @art.destroy
    authorize @art
    respond_to do |format|
      format.html { redirect_to arts_url, notice: "Art was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art
      @art = Art.find(params[:id])
      authorize @art
      return @art

    end

    # Only allow a list of trusted parameters through.
    def art_params
      params.require(:art).permit(:user_id, :title, :year, :description, :category,:image)
    end
end
