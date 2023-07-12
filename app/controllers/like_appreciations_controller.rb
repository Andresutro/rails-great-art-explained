class LikeAppreciationsController < ApplicationController

  def create
    @like_appreciation = current_user.like_appreciations.build(like_appreciation_params)
    if !@like_appreciation.save
      flash[:notice] = @like_appreciations.errors.full_messages.to_sentence
    end

    redirect_to @like_appreciation.appreciation.art

  end

  def destroy
    @like_appreciation = LikeAppreciation.find(params[:id])
    appreciation = @like_appreciation.appreciation
    @like_appreciation.destroy
    redirect_to appreciation.art


  end

  private
  def like_appreciation_params
    params.require(:like_appreciation).permit(:appreciation_id)
  end
end
