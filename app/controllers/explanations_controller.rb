class ExplanationsController < ApplicationController
  before_action :set_art, only: [:create, :destroy]
  before_action :set_explanation, only: [:destroy]

  def create
    @art = Art.find(params[:art_id])
    @explanation = @art.explanations.build(explanation_params)
    authorize @explanation
    if @explanation.save
      redirect_to @art, notice: 'La foto fue subida con éxito.'
    else
      render :new
    end
  end

  def destroy
    @explanation.destroy
    authorize @explanation
    redirect_to @art, notice: 'Art was successfully destroyed.'
  end

  private

  def set_art
    @art = Art.find(params[:art_id])
    authorize @art
  end

  def set_explanation
    @explanation = Explanation.find(params[:id])
    authorize @explanation

  end

  def explanation_params
    params.require(:explanation).permit(:image, :description)
  end
end
