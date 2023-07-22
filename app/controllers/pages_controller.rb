class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]


  def home
    @art = Art.find_by(title:'La Fortune')
    @art_recomendation =  Art.all.sample
    @arts_with_most_likes = Art.with_most_likes
    @arts_with_least_likes = Art.with_least_likes.first

    cecilia = User.find_by(email: 'cecilia@gmail.com')

    if cecilia &&  cecilia.arts.any?
      @artist = cecilia
    else
      @artist = Art.find(7).user
    end

    
  end



end
