class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @art = Art.last
    @art_recomendation =  Art.all.sample
    @arts_with_most_likes = Art.with_most_likes
    @arts_with_least_likes = Art.with_least_likes.first
  end
end

