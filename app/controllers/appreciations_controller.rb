class AppreciationsController < ApplicationController
  before_action :set_art, only: [:create, :destroy, :edit]
  before_action :set_appreciation, only: [:edit, :update, :destroy]

  def create
    @appreciation = Appreciation.new(appreciation_params)
    @art =  Art.find(params[:art_id])
    @appreciation.user = current_user
    @appreciation.art = @art
    if @appreciation.save
      redirect_to @art
    else
      redirect_to @art, status: :unprocessable_entity
    end
  end

  def destroy
    @appreciation =  Appreciation.find(params[:id])
    @appreciation.destroy
  end

  def edit
  end

  def update
    if @appreciation.update(appreciation_params)
      redirect_to @appreciation.art, notice: 'Update appreaciation was successfully updated.'
    else
      render :edit
    end
  end



  private
  def set_art
    @art = Art.find(params[:art_id])
  end

  def set_appreciation
    @appreciation = Appreciation.find(params[:id])
  end

  def appreciation_params
    params.require(:appreciation).permit(:content)
  end

end
