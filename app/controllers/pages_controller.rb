class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @art = Art.find(15)
    @arts = Art.all
  end
end
