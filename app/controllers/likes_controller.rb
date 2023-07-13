class LikesController < ApplicationController
  def create
    @like = current_user.likes.build(like_params)
    if !@like.save
      flash[:notice] = @like.errors.full_messages.to_sentence
    end


    redirect_to @like.art

  end

  def destroy

    @like = Like.find(params[:id])
    
    art = @like.art
    @like.destroy
    redirect_to art
  end




  private
  def like_params
    params.require(:like).permit(:art_id)
  end
end
