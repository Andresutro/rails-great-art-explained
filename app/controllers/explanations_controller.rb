class ExplanationsController < ApplicationController
  before_action :set_art, only: [:create, :destroy, :edit]
  before_action :set_explanation, only: [:edit, :update, :destroy]

  def create
    @art = Art.find(params[:art_id])
    @explanation = @art.explanations.build(explanation_params)
    authorize @explanation
    if @explanation.save
      redirect_to @art, notice: 'La foto fue subida con éxito.'

    else
      redirect_to @art, notice: 'La foto no fue subida con éxito.'

    end
  end

  def destroy
    @explanation.destroy
    authorize @explanation
    redirect_to @art, notice: 'Explanation was successfully destroyed.'
  end

  def edit

  end

  def update
    if @explanation.update(explanation_params)
      redirect_to @explanation.art, notice: 'Comment was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_art
    @art = Art.find(params[:art_id])
  end

  def set_explanation
    @explanation = Explanation.find(params[:id])

  end

  def explanation_params
    params.require(:explanation).permit(:image, :description)
  end
end
