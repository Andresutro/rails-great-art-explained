class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @art = Art.last
    @arts = Art.all
  end
end

