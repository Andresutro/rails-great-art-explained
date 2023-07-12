class AppreciationsController < ApplicationController
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



  private

  def appreciation_params
    params.require(:appreciation).permit(:content)
  end

end
